import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_flutter/controller/signup_controller.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/image_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';
import 'package:pinput/pinput.dart';

class OtpView extends StatelessWidget {
  const OtpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var otpcon = Get.put(SignupController());
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
          Container(
            margin: const EdgeInsets.only(top: 41),
            child: Pinput(
              controller: otpcon.otpcon,
              length: 6,
              showCursor: true,
              defaultPinTheme: PinTheme(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: ColorUtils.defaultBlack))),
              onSubmitted: (value) {},
            ),
          ),
          const SizedBox(width: double.infinity, height: 27),
          Text(
            '00:120 ' + 'Giây',
            style: StyleUtils.commonText(
              fontSize: 14,
            ),
          ),
          const SizedBox(width: double.infinity, height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Không nhận được mã ?',
                style: StyleUtils.commonText(
                    fontSize: 14, color: ColorUtils.defaultTextTime),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Gửi lại',
                    style: StyleUtils.commonText(
                      fontSize: 14,
                      color: ColorUtils.defaultBlack,
                    ),
                  )),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
            width: 325,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(ColorUtils.defaultButtonActive)),
              child: Text(
                'Xác thực',
                style: StyleUtils.commonText(
                    fontSize: 14, color: ColorUtils.defaultWhite),
              ),
              onPressed: () => {},
            ),
          ),
        ],
      ),
    ));
  }
}
