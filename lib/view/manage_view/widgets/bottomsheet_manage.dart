import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:veli_flutter/model/document.dart';
import 'package:veli_flutter/model/save_model.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';

class BottomSheetManage extends StatefulWidget {
  Document document;
  BottomSheetManage({super.key, required this.document});

  @override
  State<BottomSheetManage> createState() => _BottomSheetManageState();
}

class _BottomSheetManageState extends State<BottomSheetManage> {
  void removeItem() {
    Provider.of<SaveModel>(context, listen: false)
        .removeItemFromCart(widget.document);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 40, top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
          color: ColorUtils.defaultWhite,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 5,
            width: 50,
            decoration: BoxDecoration(
                color: ColorUtils.defaultTextDisable,
                borderRadius: BorderRadius.circular(10)),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Xóa Tài liệu',
            style: StyleUtils.commonText(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'Bạn có chắc xóa tài liệu này không?',
            style: StyleUtils.commonText(
                color: ColorUtils.defaultTextHint, fontSize: 10, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
              onPressed: () async {
                removeItem();
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(350, 60),
                backgroundColor: ColorUtils.defaultButtonActive,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'CHẮC CHẮN',
                style: StyleUtils.commonText(fontSize: 15, color: ColorUtils.defaultWhite),
              )),
          const SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(350, 60),
                backgroundColor: ColorUtils.defaultTextHint,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: Text(
                'HỦY',
                style: StyleUtils.commonText(fontSize: 15, color: ColorUtils.defaultBlack ),
              )),
        ],
      ),
    );
  }
}
