import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veli_flutter/model/document.dart';
import 'package:veli_flutter/model/save_model.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';
import 'package:veli_flutter/view/save_view/widgets/document_tile_save.dart';



class SaveView extends StatefulWidget {
  const SaveView({super.key});

  @override
  State<SaveView> createState() => _SaveViewState();
}

class _SaveViewState extends State<SaveView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:  ColorUtils.backgroundDesc,
        body: Consumer<SaveModel>(
      builder: (context, value, child) => Column(
        children: <Widget>[
          SizedBox(
            height: size.height * 0.07,
            child: Stack(
              children: [
                Positioned(
                  left: size.width * 0.45,
                  top: 25,
                  child: Text(
                    'LƯU',
                    style: StyleUtils.commonText(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: ColorUtils.defaultTextDisable,
                          ),
                  ),
                ),
                Positioned(
                  top: 17,
                  right: 0,
                  child: TextButton(
                    onPressed: () {}, 
                    child:  Text(
                      'Xóa tất cả',
                      style: StyleUtils.commonText(fontSize: 10, color: ColorUtils.backgroundMessageFriend),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
             itemCount: value.getUserSave().length,
              itemBuilder: (context, index) {
                Document document = value.getUserSave()[index];
                return DocumentTileSave(
                  document: document,
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}