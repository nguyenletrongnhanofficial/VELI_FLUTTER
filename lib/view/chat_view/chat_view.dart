import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_flutter/controller/chat_controller.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/constant_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';
import 'package:veli_flutter/view/chat_view/widgets/chat_text_field.dart';
import 'package:veli_flutter/view/chat_view/widgets/single_message.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var chatController = Get.put(ChatController());
    return Scaffold(
      backgroundColor: ColorUtils.defaultBackground,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: ColorUtils.defaultWhite,
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: ConstantUtils.defaultPadding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: const Icon(Icons.keyboard_backspace)),
                          const Icon(Icons.more_vert),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: NetworkImage(chatController.friendImage.value))),
                            ),
                            const SizedBox(width: 11),
                            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                              Text(
                                chatController.friendName.value,
                                style: StyleUtils.commonText(fontWeight: FontWeight.w500, fontSize: 14),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Container(
                                    height: 5,
                                    width: 5,
                                    decoration:
                                        BoxDecoration(shape: BoxShape.circle, color: ColorUtils.defaultButtonActive),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    'Online',
                                    style: StyleUtils.commonText(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: ColorUtils.defaultTextDescription,
                                    ),
                                  )
                                ],
                              )
                            ]),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.call, color: ColorUtils.defaultButtonActive),
                            const SizedBox(width: 5),
                            Icon(Icons.search, color: ColorUtils.defaultButtonActive),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 10)
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(10),
              color: ColorUtils.defaultBackground,
              child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection("users")
                      .doc(chatController.currentUser.value?.uid ?? '')
                      .collection('messages')
                      .doc(chatController.friendUID.value)
                      .collection('chats')
                      .orderBy("date", descending: true)
                      .snapshots(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data.docs.length < 1) {
                        return Center(
                          child: Text("Say Hi", style: StyleUtils.commonText()),
                        );
                      }
                      return ListView.builder(
                          itemCount: snapshot.data.docs.length,
                          reverse: true,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            bool isMe = snapshot.data.docs[index]['senderId'] == chatController.currentUser.value?.uid;
                            return Column(
                              crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                                    children: [
                                      isMe
                                          ? const SizedBox()
                                          : Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                      image: NetworkImage(chatController.friendImage.value))),
                                            ),
                                      SingleMessage(message: snapshot.data.docs[index]['message'], isMe: isMe),
                                    ]),
                                isMe
                                    ? Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text(chatController.convertTime(snapshot.data.docs[index]['date'])),
                                          Icon(
                                            Icons.check,
                                            color: ColorUtils.defaultButtonActive,
                                          )
                                        ],
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.only(left: 30),
                                        child: Text(chatController.convertTime(snapshot.data.docs[index]['date'])),
                                      ),
                              ],
                            );
                          });
                    }
                    return const Center(child: CircularProgressIndicator());
                  }),
            )),
            ChatTextField(chatController: chatController),
          ],
        ),
      ),
    );
  }
}
