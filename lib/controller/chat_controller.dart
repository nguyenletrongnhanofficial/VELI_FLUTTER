import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ChatController extends GetxController {
  var textController = TextEditingController();

  Rxn<User> currentUser = Rxn();
  RxString friendUID = ''.obs;
  RxString friendName = ''.obs;
  RxString friendImage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    currentUser.value = Get.arguments['currentUser'];
    friendUID.value = Get.arguments['friendUID'];
    friendName.value = Get.arguments['friendName'];
    friendImage.value = Get.arguments['friendImage'];
  }

  Future handleSentMessage({required String message, required String currentUserUID, required String friendUID}) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(currentUserUID)
        .collection('messages')
        .doc(friendUID)
        .collection('chats')
        .add({
      "senderId": currentUserUID,
      "receiverId": friendUID,
      "message": message,
      "type": "text",
      "date": DateTime.now().microsecondsSinceEpoch.toString(),
    }).then((value) {
      FirebaseFirestore.instance.collection('users').doc(currentUserUID).collection('messages').doc(friendUID).set({
        'last_msg': message,
      });
    });

    await FirebaseFirestore.instance
        .collection('users')
        .doc(friendUID)
        .collection('messages')
        .doc(currentUserUID)
        .collection("chats")
        .add({
      "senderId": currentUserUID,
      "receiverId": friendUID,
      "message": message,
      "type": "text",
      "date": DateTime.now().microsecondsSinceEpoch.toString(),
    }).then((value) {
      FirebaseFirestore.instance
          .collection('users')
          .doc(friendUID)
          .collection('messages')
          .doc(currentUserUID)
          .set({"last_msg": message});
    });
  }

  String convertTime(String date) {
    var time = int.parse(date);
    DateTime dateTime = DateTime.fromMicrosecondsSinceEpoch(time);
    String formattedTime = DateFormat('h:mm a').format(dateTime);
    return formattedTime;
  }
}
