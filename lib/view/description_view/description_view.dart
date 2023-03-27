import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_flutter/controller/description_controller.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/constant_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';
import 'package:veli_flutter/view/description_view/widgets/description_app_bar.dart';
import 'package:veli_flutter/view/description_view/widgets/description_body.dart';

class DescriptionView extends StatelessWidget {
  const DescriptionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var descriptionController = Get.put(DescriptionController());
    return Scaffold(
        body: Stack(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DescriptionAppBar(),
          DescriptionBody(descriptionController: descriptionController),
        ],
      ),
      Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: 30,
              left: ConstantUtils.defaultPadding * 2,
              right: ConstantUtils.defaultPadding * 2,
            ),
            child: SizedBox(
              height: 112,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: context.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorUtils.defaultButtonDisable,
                      ),
                      child: Center(
                        child: Text(
                          'Gọi cho người bán',
                          style: StyleUtils.commonText(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: ColorUtils.defaultTextDisable,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: context.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorUtils.defaultButtonActive,
                      ),
                      child: Center(
                        child: Text(
                          'NHẮN TIN VỚI NGƯỜI BÁN',
                          style: StyleUtils.commonText(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: ColorUtils.defaultWhite,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ))
    ]));
  }
}
