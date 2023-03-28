import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/image_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';
import 'package:veli_flutter/view/otp_view/otp_view.dart';

class ForgotView extends StatelessWidget {
  const ForgotView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: MediaQuery.of(context).viewInsets,
      child: Center(
        child: Column(
          children: [
            Container(
              height: 292,
              width: 300,
              margin: const EdgeInsets.only(top:116,right:38, left:37),
              child: const Image(
                  image: AssetImage(ImageUtils.imageForgot)
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  width: 130,
                  margin: const EdgeInsets.only(left: 27, right: 215, top: 73),
                  child: Text(
                    'Quên\n'+'Mật khẩu?',
                    style: StyleUtils.commonText(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 36,
                  width: 325,
                  margin: const EdgeInsets.only(top: 15, left: 27, right:23),
                  child: Text(
                    'Đừng lo !  Vui lòng nhập số điện thoại chúng tôi sẽ gửi OTP vào số điện thoại này.',
                    style: StyleUtils.commonText(
                      fontSize: 14,
                    ),
                  )
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white)
              ),
              margin: const EdgeInsets.only(top:27,right:38, left:37),
              child: const TextField(
                  keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Nhập số điện thoại của bạn vào đây',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),

                  )
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25, right:23, left:27),
              height: 50,
              width: 317,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(ColorUtils.defaultButtonActive)),
                child: Text(
                  'Tiếp tục',
                  style:
                  StyleUtils.commonText(fontSize: 18, color: Colors.white),
                ),
                onPressed: () => {
                  Get.to(OtpView())
                },
              ),
            )

          ],
        )
      ),
    ));
  }
}
