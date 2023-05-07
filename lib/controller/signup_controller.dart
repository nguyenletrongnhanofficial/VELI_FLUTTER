import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_flutter/model/signup_model.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:veli_flutter/veli_navigation.dart';
// import 'package:veli_flutter/view/login_view/login_view.dart';
// import 'package:google_sign_in/google_sign_in.dart';

class SignupController extends GetxController {
  var namesignupController = TextEditingController();
  var phonesignupController = TextEditingController();
  var passsignupController = TextEditingController();

  SignupModel account = SignupModel(
    name: "name",
    phone: "phone",
    password: "password",
    //uid: "uid",
  );
  var isHiddenPassword = true.obs;
  CollectionReference users =
      FirebaseFirestore.instance.collection('accCreate');

  void getAccount(String name, String phone, String password) {
    account.name = name;
    account.phone = phone;
    account.password = password;
    //print(account.toString());
  }

  // Future<UserCredential> handleGoogleLogin() async {
  //   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  //   final GoogleSignInAuthentication? googleAuth =
  //       await googleUser?.authentication;
  //   final credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth?.accessToken,
  //     idToken: googleAuth?.idToken,
  //   );
  //   return await FirebaseAuth.instance.signInWithCredential(credential);
  // }

  Future<void> handleSignup(SignupModel account) async {
    //await users.add(account.toJson());
    await isExistance(account.phone.toString()).then((result) {
      if (result) {
        print(result);
        // Fluttertoast.showToast(
        //     msg: "Số điện thoài này đã được đăng kí",
        //     toastLength: Toast.LENGTH_LONG);
      } else {
        //print(result);
        users.add(account.toJson());
       // Fluttertoast.showToast(msg: "Đăng kí thành công", toastLength: Toast.LENGTH_LONG);
        //Get.toNamed(VeliNavigation.loginView);
      }

    });
  }

  Future<bool> isExistance(String phone) async {
    return await FirebaseFirestore.instance
        .collection("accCreate")
        .where('phone', isEqualTo: phone)
        .get()
        .then((value) => value.size > 0 ? true : false);
  }
}
