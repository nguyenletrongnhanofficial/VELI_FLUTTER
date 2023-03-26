import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';

class SingleMessage extends StatelessWidget {
  final String message;
  final bool isMe;

  const SingleMessage({Key? key, required this.message, required this.isMe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            width: context.width * 0.6,
            padding: const EdgeInsets.all(16),
            constraints: const BoxConstraints(maxWidth: 300),
            decoration: BoxDecoration(
              borderRadius: isMe
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(15), topRight: Radius.circular(15), bottomLeft: Radius.circular(15))
                  : const BorderRadius.only(
                      topLeft: Radius.circular(15), topRight: Radius.circular(15), bottomRight: Radius.circular(15)),
              color: isMe ? ColorUtils.backgroundMessageMine : ColorUtils.backgroundMessageFriend,
            ),
            child: Text(
              message,
              style: StyleUtils.commonText(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: isMe ? ColorUtils.defaultWhite : ColorUtils.defaultBlack,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
