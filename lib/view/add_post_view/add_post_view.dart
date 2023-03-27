import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/constant_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';
import 'package:veli_flutter/view/add_post_view/widgets/add_image.dart';
import 'package:veli_flutter/view/add_post_view/widgets/add_post_app_bar.dart';
import 'package:veli_flutter/view/add_post_view/widgets/information_form.dart';

class AddPostView extends StatelessWidget {
  const AddPostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.defaultBackground,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: ConstantUtils.defaultPadding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AddPostAppBar(),
                const SizedBox(height: 17),
                const InformationForm(),
                const AddImage(),
                const SizedBox(height: 44),
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
                        'ĐĂNG BÀI',
                        style: StyleUtils.commonText(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: ColorUtils.defaultWhite,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 52),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
