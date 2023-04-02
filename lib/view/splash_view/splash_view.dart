import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_flutter/utils/image_utils.dart';
import 'package:veli_flutter/view/login_view/login_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 47.0, left: 304.0),
            child: const Text(
              'Veli',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 97, left: 32, right: 32),
              child: const Image(
                image: AssetImage(ImageUtils.imageSplash),
                fit: BoxFit.fill,
                height: 301,
                width: 301,
              )),
          Container(
            // height: 114,
            // width: 258,
            margin: const EdgeInsets.only(top: 78, left: 28, right: 89),
            child: const Text(
              'Đăng bán tài liệu không dùng đến',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15, left: 29, right: 79),
            child: const Text(
              'Nếu bạn đang có tài cũ không dùng đến thay vì vứt nó, bạn hãy dùng Veli để đăng và bán nó',
              style: TextStyle(
                fontSize: 14,
              ),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(()=>LoginView());
        },
        backgroundColor: Color(0xff0EBF7E),
        child: const Icon(
          //Icons.arrow_right_alt_outlined,
          Icons.arrow_forward_sharp,
          size: 40,
        ),
      ),
    );
  }
}
