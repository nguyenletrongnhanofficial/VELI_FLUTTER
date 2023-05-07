import 'package:flutter/material.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/image_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';



class NoSaveView extends StatelessWidget {
  const NoSaveView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: size.height * 0.15),
          Text(
            'Không có tài liệu được lưu',
            style: StyleUtils.commonText(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          Container(
            width: 200,
            child: Text(
              'Bạn chưa lưu bất kỳ tài liệu nào \nấn biểu tượng lưu để lưu nhanh tài liệu mà bạn thích',
              textAlign: TextAlign.center,
              style: StyleUtils.commonText(
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.03),
          Container(
              height: 250,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(ImageUtils.imageNosave),
              ))),
          SizedBox(height: size.height * 0.08),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(150, 50),
              backgroundColor:ColorUtils.defaultButtonActive,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: const Text("Tìm tài liệu"),
          ),
        ],
      ),
    );
  }
}
