import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_flutter/controller/signup_controller.dart';
import 'package:veli_flutter/utils/style_utils.dart';

import '../../utils/color_utils.dart';

class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var signupController = Get.put(SignupController());
    // SignupModel account = SignupModel(
    //     name: signupController.namesignupController.text,
    //     phone: signupController.phonesignupController.text.toString(),
    //     password: signupController.passsignupController.text);

    String name = signupController.namesignupController.text;
    String phone = signupController.phonesignupController.text.toString();
    String password = signupController.passsignupController.text;

    return Scaffold(
      body: SingleChildScrollView(
        padding: MediaQuery
            .of(context)
            .viewInsets,
        child: Center(
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(top: 110, right: 99, left: 79),
              child: Text('Tạo tài khoản',
                  style: StyleUtils.commonText(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 3, right: 42, left: 42),
              child: Text(
                'Tạo nhanh tài khoản Veli để sử dụng',
                style: StyleUtils.commonText(
                  color: const Color(0xff524B6B),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 83, left: 29),
                  child: Text(
                    'Họ và tên',
                    style: StyleUtils.commonText(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 10, left: 29, right: 29),
                child: TextField(
                  controller: signupController.namesignupController,
                  decoration: const InputDecoration(
                      hintText: 'Nguyễn Văn A',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)))),
                  keyboardType: TextInputType.text,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 14, left: 29, right: 29),
                    child: Text(
                      'Số điện thoại',
                      style: StyleUtils.commonText(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 10, left: 29, right: 29),
                child: TextField(
                    controller: signupController.phonesignupController,
                    decoration: const InputDecoration(
                        hintText: '0382516542',
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(12)))),
                    keyboardType: TextInputType.phone)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 15, left: 29, right: 29),
                    child: Text(
                      'Mật khẩu',
                      style: StyleUtils.commonText(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
              ],
            ),
            Obx(
                  () =>
                  Container(
                      margin: const EdgeInsets.only(
                          top: 10, left: 29, right: 29),
                      child: TextField(
                        controller: signupController.passsignupController,
                        obscureText: signupController.isHiddenPassword.value,
                        decoration: InputDecoration(
                            suffixIcon: InkWell(
                                onTap: () {
                                  signupController.isHiddenPassword.value =
                                  !signupController.isHiddenPassword.value;
                                },
                                child: signupController.isHiddenPassword.value
                                    ? const Icon(Icons.remove_red_eye)
                                    : const Icon(Icons.visibility_off)),
                            hintText: '*********',
                            border: const OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(12)))),
                      )),
            ),
            Container(
              decoration: BoxDecoration(color: ColorUtils.defaultButtonActive),
              margin: const EdgeInsets.only(top: 64, right: 29, left: 29),
              height: 50,
              width: 317,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          ColorUtils.defaultButtonActive)),
                  child: Text(
                    'Đăng ký',
                    style: StyleUtils.commonText(
                        fontSize: 15, color: Colors.white),
                  ),
                  onPressed: () =>
                  {
                    signupController.getAccount(name, phone, password),
                    signupController.handleSignup(signupController.account)
                  }),
            ),

            Container(
              margin: const EdgeInsets.only(top: 12, right: 29, left: 29),
              height: 50,
              width: 317,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        ColorUtils.defaultButtonGoogle)),
                child: Text(
                  'Đăng nhập bằng Google',
                  style: StyleUtils.commonText(
                      fontSize: 15, color: ColorUtils.defaultTextBlack),
                ),
                onPressed: () =>
                {
                 // signupController.handleGoogleLogin()
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 19, right: 70, left: 84),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Bạn đã có tài khoản?',
                    style: StyleUtils.commonText(),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Đăng nhập ngay',
                        style: StyleUtils.commonText(
                            color: ColorUtils.defaultTextRed),
                      ))
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
