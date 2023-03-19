import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
          Container(
              margin: const EdgeInsets.only(top: 47.0, left: 304.0),
              child: Row(
                children: const <Widget>[
                  Text("Veli", style: TextStyle(fontSize: 18)),
                ],
              )),
          Container(
            margin: const EdgeInsets.only(top: 97, right: 32, left: 32),
            child: Image.asset('assets/images/image_SplashScreen.png',
                height: 301, width: 311),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 58,
              right: 84,
              left: 28,
            ),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Đăng bán",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold)),
                    Text("tài liệu không",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold)),
                    Text("dùng đến",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold)),
                  ],
                )
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.only(
                right: 79,
                left: 28,
              ),
              child: Row(
                children: <Widget>[
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Nếu bạn đang có tài liệu cũ không dùng đến",
                            style: TextStyle(
                              fontSize: 14,
                            )),
                        Text("thay vì vứt nó, bạn hãy dùng đến Veli để đăng",
                            style: TextStyle(
                              fontSize: 14,
                            )),
                        Text("và bán nó",
                            style: TextStyle(
                              fontSize: 14,
                            )),
                      ])
                ],
              ))
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xff0EBF7E),
          child: const Icon(
            //Icons.arrow_right_alt_outlined,
            Icons.arrow_forward_sharp,
            size: 40,
          ),
        ));
  }
}
