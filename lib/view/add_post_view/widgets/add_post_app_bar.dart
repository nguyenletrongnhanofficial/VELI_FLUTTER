import 'package:flutter/material.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/constant_utils.dart';
import 'package:veli_flutter/utils/image_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';

class AddPostAppBar extends StatelessWidget {
  const AddPostAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: ConstantUtils.defaultPadding / 2),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.keyboard_backspace),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: ConstantUtils.defaultPadding),
          child: Text(
            'ĐĂNG TÀI LIỆU',
            style: StyleUtils.commonText(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: ColorUtils.defaultTextTitle,
            ),
          ),
        ),
        const SizedBox(height: 35),
        Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageUtils.avatar),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(11),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trọng Nhân',
                    style: StyleUtils.commonText(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: ColorUtils.defaultTextTitle,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'UIT, Thủ Đức',
                    style: StyleUtils.commonText(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: ColorUtils.defaultTextDescription,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
