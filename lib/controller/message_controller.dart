import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intl/intl.dart';
import 'package:veli_flutter/model/account_model.dart';
import 'package:veli_flutter/veli_navigation.dart';

class MessageController extends GetxController {
  Rxn<User> user = Rxn();
  late GoogleSignIn googleSignIn = GoogleSignIn();
  late FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  var searchController = TextEditingController();

  Future handleLogin(String user, String password) async {}

  Future handleGoogleLogin() async {
    await GoogleSignIn().signOut();
    GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    if (googleUser == null) {
      return;
    }
    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);

    DocumentSnapshot userExist = await firebaseFirestore.collection('users').doc(userCredential.user!.uid).get();

    if (userExist.exists) {
    } else {
      await firebaseFirestore.collection('users').doc(userCredential.user!.uid).set({
        'email': userCredential.user!.email,
        'name': userCredential.user!.displayName,
        'image': userCredential.user!.photoURL,
        'uid': userCredential.user!.uid,
        'date': DateTime.now().microsecondsSinceEpoch.toString(),
      });
    }

    user.value = FirebaseAuth.instance.currentUser;
    if (user.value != null) {
      DocumentSnapshot userData = await FirebaseFirestore.instance.collection('users').doc(user.value!.uid).get();
      Map<String, dynamic>? response = userData.data() as Map<String, dynamic>?;

      var existUser = AccountModel.fromJson(response!);
      return existUser;
    }
  }

  Future<User?> handleLogout() async {
    await googleSignIn.signOut();
    await FirebaseAuth.instance.signOut();
    Rxn<User?> existUser = Rxn();
    return existUser.value;
  }

  Future<dynamic> doSearchName({required String searchController}) async {
    RxList resultSearch = [].obs;

    await FirebaseFirestore.instance.collection('users').where("name", isEqualTo: searchController).get().then((value) {
      resultSearch.assignAll(value.docs);
    });
    return resultSearch;
  }

  Future<AccountModel?> doGetExistUser(User? user) async {
    AccountModel? existUser;
    if (user != null) {
      DocumentSnapshot userData = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
      Map<String, dynamic>? response = userData.data() as Map<String, dynamic>?;

      existUser = AccountModel.fromJson(response!);
      return existUser;
    } else {
      return null;
    }
  }

  Function? handleDetailChat(
  String friendUID, String friendName, String friendImage) {
    Get.toNamed(VeliNavigation.chatView, arguments: {
      'currentUser': user.value,
      'friendUID': friendUID,
      'friendName': friendName,
      'friendImage': friendImage,
    });
    return null;
  }

  String formatLastTime(String createTime) {
    var createTimestamp = int.parse(createTime);
    DateTime time = DateTime.fromMicrosecondsSinceEpoch(createTimestamp);
    DateTime now = DateTime.now();
    Duration difference = now.difference(time);

    if (difference < const Duration(hours: 1)) {
      if (difference.inMinutes < 1) {
        return "just now";
      } else {
        return "${difference.inMinutes} m ago";
      }
    }
    else if (difference < const Duration(hours: 2)) {
      return "${difference.inHours} h ago";
    }
    else if (difference < const Duration(days: 1)) {
      return DateFormat('hh:mm a').format(time);
    } else {
      return DateFormat('hh:mm a dd/MM').format(time);
    }
  }

}
