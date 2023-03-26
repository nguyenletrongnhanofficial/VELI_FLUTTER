import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/constant_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';
import 'package:veli_flutter/view/filter_view/widgets/filter_app_bar.dart';
import 'package:veli_flutter/view/filter_view/widgets/filter_body.dart';

class FilterView extends StatelessWidget {
  const FilterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.defaultBackground,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: ConstantUtils.defaultPadding),
          child: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                FilterAppBar(),
                FilterBody(),
              ],
            ),
            Positioned(
              bottom: 30,
              left: 30,
              right: 30,
              child: InkWell(
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
                      'ÁP DỤNG',
                      style: StyleUtils.commonText(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: ColorUtils.defaultWhite,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
