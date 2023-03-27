import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_flutter/controller/message_controller.dart';
import 'package:veli_flutter/model/account_model.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/constant_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';
import 'package:veli_flutter/view/message_view/widgets/item_chat.dart';

class MessageView extends StatelessWidget {
  const MessageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var messageController = Get.put(MessageController());
    return Obx(
      () => Scaffold(
        backgroundColor: ColorUtils.defaultBackground,
        body: SafeArea(
          child: messageController.user.value != null
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: ConstantUtils.defaultPadding),
                  child: Column(
                    children: [
                      SizedBox(height: ConstantUtils.defaultPadding),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () async {
                              messageController.user.value = await messageController.handleLogout();
                            },
                            child: Icon(Icons.logout, color: ColorUtils.defaultButtonActive),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Tin nhắn',
                              style: StyleUtils.commonText(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: ColorUtils.defaultBlack,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.edit,
                                color: ColorUtils.defaultButtonActive,
                              ),
                              const SizedBox(height: 10),
                              const Icon(Icons.more_vert),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: messageController.searchController,
                        textInputAction: TextInputAction.next,
                        style: StyleUtils.commonText(fontSize: 11),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            size: 28,
                            color: ColorUtils.defaultTextHint,
                          ),
                          hintStyle: StyleUtils.commonText(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: ColorUtils.defaultTextHint,
                          ),
                          hintText: 'Tìm kiếm tin nhắn',
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 13,
                            horizontal: 10,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border:
                              OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                          isDense: true,
                        ),
                      ),
                      StreamBuilder(
                          stream: FirebaseFirestore.instance
                              .collection('users')
                              .doc(messageController.user.value!.uid)
                              .collection('messages')
                              .snapshots(),
                          builder: (context, AsyncSnapshot snapshot) {
                            if (snapshot.hasData) {
                              if (snapshot.data.docs.length < 1) {
                                return StreamBuilder(
                                    stream: FirebaseFirestore.instance
                                        .collection('users')
                                        .doc(messageController.user.value!.uid)
                                        .snapshots(),
                                    builder: (context, AsyncSnapshot snapshotUser) {
                                      if (!snapshotUser.hasData) {
                                        return const Expanded(child: Center(child: CircularProgressIndicator()));
                                      }
                                      return ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: snapshotUser.data!.docs.length,
                                          itemBuilder: (context, index) {
                                            var friend = snapshotUser.data!.docs[index];
                                            var friendData = friend.data()!;
                                            var existFriend = AccountModel.fromJson(friendData);
                                            return InkWell(
                                                onTap: () {
                                                  messageController.handleDetailChat(
                                                      existFriend.uid, existFriend.name, existFriend.image);
                                                },
                                                child: ItemChat(
                                                    existAccount: existFriend,
                                                    lastMessage: 'Trò chuyện để mua bán dễ dàng hơn'));
                                          });
                                    });
                              }

                              return Container(
                                margin: const EdgeInsets.symmetric(vertical: 10.0),
                                width: context.width,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: snapshot.data.docs.length,
                                    itemBuilder: (context, index) {
                                      var friendId = snapshot.data.docs[index].id;
                                      var lastMsg = snapshot.data.docs[index]['last_msg'];
                                      return FutureBuilder(
                                        future: FirebaseFirestore.instance.collection('users').doc(friendId).get(),
                                        builder: (context, AsyncSnapshot asyncSnapshot) {
                                          if (asyncSnapshot.hasData) {
                                            var friend = asyncSnapshot.data;
                                            var friendData = friend.data()!;
                                            var existFriend = AccountModel.fromJson(friendData);
                                            return FutureBuilder(
                                                future: FirebaseFirestore.instance
                                                    .collection("users")
                                                    .doc(messageController.user.value?.uid ?? '')
                                                    .collection('messages')
                                                    .doc(existFriend.uid)
                                                    .collection('chats')
                                                    .orderBy("date", descending: true)
                                                    .get(),
                                                builder: (context, AsyncSnapshot snapshotTime) {
                                                  if (snapshotTime.hasData) {
                                                    var lastTime = snapshotTime.data.docs[index]['date'];
                                                    return InkWell(
                                                        onTap: () {
                                                          messageController.handleDetailChat(
                                                              existFriend.uid, existFriend.name, existFriend.image);
                                                        },
                                                        child: ItemChat(
                                                            existAccount: existFriend,
                                                            lastMessage: lastMsg,
                                                            lastTime: lastTime));
                                                  }
                                                  return const LinearProgressIndicator();
                                                });
                                          }
                                          return const LinearProgressIndicator();
                                        },
                                      );
                                    }),
                              );
                            }
                            return const SizedBox();
                          }),
                    ],
                  ),
                )
              : Column(
                  children: [
                    const Expanded(
                      child: Center(
                        child: Text('Bạn chưa đăng nhập tài khoản Google!!! \n Vui lòng đăng nhập tài khoản Google!'),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await messageController.handleGoogleLogin();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                          height: 50,
                          width: context.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorUtils.defaultButtonActive,
                          ),
                          child: Center(
                            child: Text(
                              'Đăng nhập với Google',
                              style: StyleUtils.commonText(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: ColorUtils.defaultWhite,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
