import 'package:flutter/material.dart';
import 'package:veli_flutter/controller/chat_controller.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/constant_utils.dart';
import 'package:veli_flutter/utils/image_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';

class ChatTextField extends StatelessWidget {
  final ChatController chatController;

  const ChatTextField({Key? key, required this.chatController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: ColorUtils.defaultBackground,
        padding: EdgeInsetsDirectional.symmetric(
            horizontal: ConstantUtils.defaultPadding, vertical: ConstantUtils.defaultPadding + 5),
        child: Row(children: [
          Expanded(
            child: TextField(
              controller: chatController.textController,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.attach_file, color: ColorUtils.defaultTextDescription),
                  hintStyle: StyleUtils.commonText(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorUtils.defaultTextHint,
                  ),
                  hintText: "Soạn tin nhắn",
                  fillColor: ColorUtils.defaultWhite,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(width: 0), gapPadding: 10, borderRadius: BorderRadius.circular(15))),
            ),
          ),
          const SizedBox(width: 10),
          InkWell(
            onTap: () async {
              String message = chatController.textController.text;
              chatController.textController.clear();
              await chatController.handleSentMessage(
                message: message,
                currentUserUID: chatController.currentUser.value!.uid,
                friendUID: chatController.friendUID.value,
              );
            },
            child: Container(
              height: 50,
              width: 50,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorUtils.defaultButtonActive,
              ),
              child: Center(child: Image.asset(ImageUtils.send)),
            ),
          ),
        ]));
  }
}
