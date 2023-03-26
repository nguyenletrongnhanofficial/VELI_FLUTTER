import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_flutter/model/account_model.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';

import '../../../controller/message_controller.dart';

class ItemChat extends StatelessWidget {
  final AccountModel existAccount;
  final String lastMessage;
  final String? lastTime;

  const ItemChat({
    Key? key,
    required this.existAccount,
    required this.lastMessage,
    this.lastTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var messageController = Get.put(MessageController());
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Image.network(existAccount.image),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            existAccount.name,
            style: StyleUtils.commonText(
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: ColorUtils.defaultTextTitle,
            ),
          ),
          Visibility(
            visible: lastTime != null,
            child: Text(
              messageController.formatLastTime(lastTime ?? DateTime.now().microsecondsSinceEpoch.toString()),
              style: StyleUtils.commonText(
                color: ColorUtils.defaultTextTime,
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 6),
        child: Text(
          lastMessage,
          style: StyleUtils.commonText(
            fontWeight: FontWeight.w700,
            fontSize: 12,
            color: ColorUtils.defaultTextDescription,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
