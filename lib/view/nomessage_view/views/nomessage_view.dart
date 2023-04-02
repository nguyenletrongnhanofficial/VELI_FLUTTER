import 'package:flutter/material.dart';
import 'package:veli_flutter/utils/image_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';

class NoMessageView extends StatelessWidget {
  const NoMessageView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,       
        children: [
          Container(
            height: 250,
            margin:  EdgeInsets.only(top: size.height * 0.23),        
            decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(ImageUtils.imageMessage),
                      )
            )
          ),
          SizedBox(height: size.height * 0.02),
          Text(
            'Không có tin nhắn',
            style: StyleUtils.commonText(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Text(
            'Bạn chưa có tin nhắn mua bán nào ở đây',
            style: StyleUtils.commonText(
              fontSize: 12
            ),
          )
        ],
      ),
    );
  }
}