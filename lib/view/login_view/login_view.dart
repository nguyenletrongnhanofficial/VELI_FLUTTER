import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:veli_flutter/utils/style_utils.dart';

import '../../utils/color_utils.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Scaffold(
        body: SingleChildScrollView(
      padding: MediaQuery.of(context).viewInsets,
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
                height: 39,
                width: 317,
                margin: const EdgeInsets.only(left: 32, top: 105, right: 26),
                child: const Text(
                  'Chào mừng đã trở lại!',
                  style: TextStyle(
                    fontFamily: 'Material Icons',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    alignment: Alignment.center,
                    height: 38,
                    width: 291,
                    margin: const EdgeInsets.only(left: 42, top: 8, right: 42),
                    child: const Text(
                      'Veli và nơi để bạn có thể đăng bán bất kỳ tài liệu nào mà bạn không dùng đến',
                      style: TextStyle(
                        fontFamily: 'Material Icons',
                        fontSize: 12,
                      ),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 39, top: 64, right: 266),
                  child: const Text(
                    'Số điện thoại',
                    style: TextStyle(
                      fontFamily: 'Material Icons',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 50,
              width: 317,
              margin: const EdgeInsets.only(left: 29, top: 10, right: 29),
              child: const TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(12)))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 39, top: 15, right: 288),
                  child: const Text(
                    'Mật khẩu',
                    style: TextStyle(
                      fontFamily: 'Material Icons',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Container(
                height: 50,
                width: 317,
                margin: const EdgeInsets.only(left: 29, top: 10, right: 29),
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(12)))),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 24,
                  height: 24,
                  margin: const EdgeInsets.only(left: 32, top: 24),
                  child: Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      isChecked = value!;
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15, top: 20),
                  child: Text(
                    'Nhớ đăng nhập',
                    style: StyleUtils.commonText(color: ColorUtils.defaultCheck_remember),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left:93, top:24),
                  child: TextButton(
                      onPressed: (){},
                      child: Text(
                        'Quên mật khẩu?',
                        style: StyleUtils.commonText()
                      )
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 36, right:52, left:57),
              height: 50,
              width: 266,
              child: ElevatedButton(
                style: ButtonStyle (
                    backgroundColor: MaterialStatePropertyAll( ColorUtils.defaultButtonActive)
                ),
                child: Text(
                  'Đăng nhập',
                  style:
                  StyleUtils.commonText(fontSize: 14, color:ColorUtils.defaultWhite),
                ),
                onPressed: () => {},
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 17, right:52, left:57),
              height: 50,
              width: 266,
              child: ElevatedButton(
                style: ButtonStyle (
                    backgroundColor: MaterialStatePropertyAll( ColorUtils.defaultButtonGoogle)
                ),
                child: Text(
                  'Đăng nhập bằng Google',
                  style:
                  StyleUtils.commonText(fontSize: 14, color:ColorUtils.defaultTextBlack),
                ),
                onPressed: () => {},
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 18, right:70, left: 87),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Bạn chưa có tài khoản?',
                    style: StyleUtils.commonText(),
                  ),
                  TextButton(
                      onPressed: (){},
                      child: Text(
                        'Đăng ký ngay',
                        style: StyleUtils.commonText(
                            color: ColorUtils.defaultTextRed
                        ),
                      )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
