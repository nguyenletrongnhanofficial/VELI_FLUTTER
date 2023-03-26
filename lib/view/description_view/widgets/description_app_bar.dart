import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/constant_utils.dart';
import 'package:veli_flutter/utils/image_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';

class DescriptionAppBar extends StatelessWidget {
  const DescriptionAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: context.height * 0.4,
          width: context.width,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(ImageUtils.backgroundDesc), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: context.height * 0.2,
            width: context.width,
            decoration: BoxDecoration(
              color: ColorUtils.backgroundDesc,
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(ConstantUtils.defaultPadding, ConstantUtils.defaultPadding + 5,
                  ConstantUtils.defaultPadding, ConstantUtils.defaultPadding / 4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Nguyễn Lê Trọng Nhân',
                    style: StyleUtils.commonText(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Bán tài liệu hệ thống nhúng',
                    style: StyleUtils.commonText(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: ConstantUtils.defaultPadding / 2),
                    child: Text(
                      'Giá: 500k VNĐ',
                      style: StyleUtils.commonText(
                          fontSize: 16, fontWeight: FontWeight.w400, color: ColorUtils.defaultTextRed),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Trường ĐH CNTT (UIT)',
                        style: StyleUtils.commonText(
                            fontSize: 16, fontWeight: FontWeight.w400, color: ColorUtils.defaultTextInformation),
                      ),
                      Text(
                        '1 ngày trước',
                        style: StyleUtils.commonText(
                            fontSize: 16, fontWeight: FontWeight.w400, color: ColorUtils.defaultTextInformation),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: context.height * 0.2 - 60,
          left: 0,
          right: 0,
          child: Container(
            height: 88,
            width: 88,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorUtils.defaultWhite,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(ImageUtils.avatar), fit: BoxFit.contain)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


