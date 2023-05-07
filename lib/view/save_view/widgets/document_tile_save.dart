import 'package:flutter/material.dart';
import 'package:veli_flutter/model/document.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';
import 'package:veli_flutter/view/save_view/widgets/bottomsheet_save.dart';



class DocumentTileSave extends StatelessWidget {
  Document document;
  DocumentTileSave({super.key, required this.document});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            backgroundColor: ColorUtils.defaultBottomSheet,
            context: context,
            builder: (context) {
              return BottomSheetSave(document: document);
            });
      },
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        height: 170,
        decoration: BoxDecoration(
            color: ColorUtils.defaultWhite, borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 5,
                  ),
                  height: 120,
                  width: 140,
                  child: Image.asset(document.image),
                ),
                const SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      document.nameDocument,
                      style: StyleUtils.commonText(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      document.price,
                      style: StyleUtils.commonText(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      document.school,
                      style:StyleUtils.commonText(fontSize: 12),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: 150,
                      child: Text(
                        document.describe,
                
                        style: StyleUtils.commonText(fontSize: 12),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  maxRadius: 12,
                  minRadius: 12,
                  backgroundColor: ColorUtils.defaultTextHint,
                  backgroundImage: AssetImage(document.avatar),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  document.name,
                  style: StyleUtils.commonText(fontSize: 15),
                ),
                const SizedBox(width: 15),
                Text(
                  document.address,
                  style: StyleUtils.commonText(fontSize: 15),
                ),
                const SizedBox(width: 15),
                Text(
                  document.time,
                  style: StyleUtils.commonText(fontSize: 10, color: ColorUtils.defaultTextHint),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
