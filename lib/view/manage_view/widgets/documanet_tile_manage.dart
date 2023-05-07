import 'package:flutter/material.dart';
import 'package:veli_flutter/model/document.dart';
import 'package:veli_flutter/utils/color_utils.dart';

import 'package:veli_flutter/utils/image_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';
import 'package:veli_flutter/view/manage_view/widgets/bottomsheet_manage.dart';

class DocumentTileManage extends StatelessWidget {
  Document document;
  DocumentTileManage({super.key, required this.document});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
      height: 180,
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
              SizedBox(width: 5,),
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
                    style: StyleUtils.commonText(fontSize: 12),
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
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Text(
                document.time,
                style: StyleUtils.commonText(fontSize: 10, color: ColorUtils.defaultTextHint),
              ),
              const SizedBox(
                width: 170,
              ),
              IconButton(
                  onPressed: () {                   
                  },
                  icon: Image.asset(
                    ImageUtils.iconChange,
                  )),
              IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return BottomSheetManage(document: document);
                        });
                  },
                  icon: Image.asset(ImageUtils.iconRemove))
            ],
          )
        ],
      ),
    );
  }
}
