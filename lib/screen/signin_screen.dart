import 'package:flutter/material.dart';
import 'package:textfield_shadow/custom_textfield.dart';
import 'package:checkbox_formfield/checkbox_formfield.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextEditingController controller = TextEditingController();
    return Scaffold(
        body: Container(
            child: Column(children: <Widget>[
      Container(
        margin: const EdgeInsets.only(top: 105, right: 26, left: 32),
        child: const Text(
          'Chào mừng bạn trở lại!',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 8, right: 42, left: 42, bottom: 64),
        child: const Text(
            'Veli và nơi để bạn có thể đăng bán bất kỳ tài liệu nào mà bạn không dùng đến',
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 32, top: 64),
            child: const Text(
              'Số điện thoại',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ),
        ],
      ),
      Container(
        padding: const EdgeInsets.only(left: 29, top: 10, right: 29),
        child: const TextField(
          textAlign: TextAlign.start,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(border: OutlineInputBorder()),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.only(left: 32, top: 15),
              child: const Text(
                "Mật khẩu",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                textAlign: TextAlign.left,
              ))
        ],
      ),
      Container(
        padding: const EdgeInsets.only(left: 29, top: 10, right: 29),
        child: const TextField(
          obscureText: true,
          obscuringCharacter: "*",
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter password",
          ),
        ),
      ),

    ])));
  }
}
