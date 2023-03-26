import 'package:flutter/material.dart';
import 'package:veli_flutter/utils/image_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';

class OtpView extends StatelessWidget {
  const OtpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              margin: const EdgeInsets.only(top: 251),
              child: const Image(
                image: AssetImage(ImageUtils.imageOtp),
                width: 125,
                height: 109,
              )),
          Container(
              margin: const EdgeInsets.only(top: 64),
              child: Text(
                'XÁC THỰC OTP',
                style: StyleUtils.commonText(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Container(
              margin: const EdgeInsets.only(top: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Nhập mã OTP đã nhận ở SĐT ',
                    style: StyleUtils.commonText(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '012345678',
                    style: StyleUtils.commonText(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),

        ],
      ),
    ));
  }
}
