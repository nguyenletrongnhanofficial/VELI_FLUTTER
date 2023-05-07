import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veli_flutter/model/document.dart';
import 'package:veli_flutter/model/save_model.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/image_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';
import 'package:veli_flutter/view/manage_view/widgets/documanet_tile_manage.dart';

class ManageView extends StatefulWidget {
  const ManageView({super.key});

  @override
  State<ManageView> createState() => _ManageViewState();
}

class _ManageViewState extends State<ManageView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: ColorUtils.backgroundDesc,
        body: Consumer<SaveModel>(
          builder: (context, value, child) => Column(
            children: <Widget>[
              SizedBox(
                height: size.height * 0.07,
                child: Stack(
                  children: [
                    Positioned(
                      left: size.width * 0.02,
                      top: 25,
                      child:  Text(
                        'Quản lý bài đăng',
                        style: StyleUtils.commonText(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      top: 25,
                      right: 55,
                      child: Text(
                        'Thêm mới',
                        style: StyleUtils.commonText(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: ColorUtils.defaultButtonActive),
                      ),
                    ),
                    Positioned(
                      top: 12,
                      right: 20,
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            ImageUtils.iconAdd,
                          )),
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
                    return DocumentTileManage(
                      document: document,
                    );
                  },
                ),
              ),
            ],
          ),
        ));
    ;
  }
}
