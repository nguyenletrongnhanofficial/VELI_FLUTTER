import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veli_flutter/model/document.dart';
import 'package:veli_flutter/model/save_model.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/image_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';


class BottomSheetSave extends StatefulWidget {
  Document document;
  BottomSheetSave({super.key, required this.document});


  @override
  State<BottomSheetSave> createState() => _BottomSheetSaveState();
}

class _BottomSheetSaveState extends State<BottomSheetSave> {
  void removeItem() {
    Provider.of<SaveModel>(context, listen: false)
        .removeItemFromCart(widget.document);
  }
  void removeAllItem() {
    Provider.of<SaveModel>(context, listen: false).removeallItemFromCart(widget.document);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration:  BoxDecoration(
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
            height: 10,
          ),
          ElevatedButton(
            onPressed: () async {
              removeItem();
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(350, 50),
              backgroundColor: ColorUtils.defaultWhite,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Image.asset(ImageUtils.iconDelete),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Xóa',
                  style: StyleUtils.commonText(fontSize: 12, color: ColorUtils.defaultBlack),
                )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: removeAllItem,
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(350, 50),
              backgroundColor: ColorUtils.defaultTextRed,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Image.asset(ImageUtils.iconDeath),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Xóa hết',
                  style: StyleUtils.commonText(fontSize: 12, color: ColorUtils.defaultWhite),
                )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(350, 50),
              backgroundColor: ColorUtils.defaultButtonActive,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Image.asset(ImageUtils.iconSent),
                const SizedBox(
                  width: 10,
                ),
                 Text(
                  'Gửi tin nhắn',
                  style: StyleUtils.commonText(fontSize: 12, color: ColorUtils.defaultWhite),
                )
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
