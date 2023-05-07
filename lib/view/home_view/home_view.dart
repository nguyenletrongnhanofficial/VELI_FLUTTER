import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/image_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 39, left: 23),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Xin chào',
                        style: StyleUtils.commonText(
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        'Trọng nhân',
                        style: StyleUtils.commonText(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 43.56, left: 157.56),
                  child: CircleAvatar(),
                ),
              ],
            ),
            const SizedBox(height: 26),
            Container(
              width: double.infinity,
              height: 179,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImageUtils.imageAdvertise))),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 46, left: 37),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tiết kiệm đến 50%',
                          style: StyleUtils.commonText(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Hãy cùng nhau bảo vệ\nmôi trường',
                          style: StyleUtils.commonText(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 27, left: 10),
                    child: Column(
                      children: [
                        Image.asset(ImageUtils.image_Documentation),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      'Đề xuất cho bạn',
                      style: StyleUtils.commonText(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            const SizedBox(height: 15),
            Container(
                margin: const EdgeInsets.only(left: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(top: 19),
                      height: 170,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color(0xFFAFECFE),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Image(
                              width: 66.0,
                              height: 51.0,
                              image: AssetImage(ImageUtils.image_Uitschool)),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'UIT',
                            style: StyleUtils.commonText(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Có hơn 100\ntài liệu',
                            style: StyleUtils.commonText(
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            decoration:
                                BoxDecoration(color: Color(0xFFBEAFFE)),
                            width: context.width * 0.45,
                            height: context.height * 0.1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Hệ thống nhúng', style: StyleUtils.commonText(fontSize: 16, fontWeight: FontWeight.bold)),
                                Text('Có hơn 1000 tài liệu', style: StyleUtils.commonText(fontSize: 14)),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            decoration:
                            BoxDecoration(color: Color(0xFFFFD6AD)),
                            width: context.width * 0.45,
                            height: context.height * 0.1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Pháp luật', style: StyleUtils.commonText(fontSize: 16, fontWeight: FontWeight.bold)),
                                Text('Có hơn 1000 tài liệu', style: StyleUtils.commonText(fontSize: 14)),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
            const SizedBox(height: 19),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Tài liệu mới',
                      style: StyleUtils.commonText(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  //color: Colors.tealAccent,
                  color: Colors.white54,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 25.0,
                    blurStyle: BlurStyle.outer,
                    offset: Offset.infinite,

                   spreadRadius: BorderSide.strokeAlignOutside
                  )
                ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(27, 16, 20, 15),
                    child: Row(
                      children: <Widget>[
                        Image(image: AssetImage(ImageUtils.image_tailieu)),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Tài liệu hệ thống nhúng',
                                  style: StyleUtils.commonText(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              Text('400.000 VNĐ',
                                  style: StyleUtils.commonText(fontSize: 12)),
                              Text('Trường đại học phụ hồ',
                                  style: StyleUtils.commonText(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                  'Tài liệu này gồm 400 trang\nmình mới in hôm qua nên...',
                                  style: StyleUtils.commonText(fontSize: 12)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  //SizedBox(height: 11,),
                  Container(
                    padding: EdgeInsets.only(bottom: 14),
                    margin: EdgeInsets.only(left: 7),
                    child: Row(
                      children: [
                        CircleAvatar(),
                        Container(
                            margin: EdgeInsets.only(left: 1),
                            child: Text(
                              'Thị Na',
                              style: StyleUtils.commonText(fontSize: 12),
                            )),
                        Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              'Thành phố Thủ Đức',
                              style: StyleUtils.commonText(fontSize: 12),
                            )),
                        Container(
                          margin: EdgeInsets.only(left: 21),
                          child: Text('25 phút trước',
                              style: StyleUtils.commonText(fontSize: 12)),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 18),
                            child: Icon(Icons.bookmark_add)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 800),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: ColorUtils.defaultTextDisable,
          selectedItemColor: ColorUtils.defaultButtonActive,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Thông báo'),
            BottomNavigationBarItem(
                icon: Icon(Icons.messenger_rounded), label: 'Tin nhắn'),
            BottomNavigationBarItem(
                icon: Icon(Icons.phone_android), label: 'Tài liệu'),
          ]),
    );
  }
}
