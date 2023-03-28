import 'package:flutter/material.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/image_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 95, top: 94, right: 111),
              child: Text(
                'Thành công',
                style: StyleUtils.commonText(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 4, left: 53, right: 17, bottom: 81),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Mật khẩu của bạn đã được cập nhật, vui lòng thay đổi\nmật khẩu thường xuyên để tránh điều này xảy ra',
                    style: StyleUtils.commonText(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const Image(image: AssetImage(ImageUtils.imageSuccess)),
            Container(
              margin: const EdgeInsets.only(top: 81, right:29, left:29),
              height: 50,
              width: 317,
              child: ElevatedButton(
                style: ButtonStyle (
                    backgroundColor: MaterialStatePropertyAll( ColorUtils.defaultButtonActive)
                ),
                child: Text(
                  'TIẾP TỤC',
                  style:
                      StyleUtils.commonText(fontSize: 14, color: Colors.white),
                ),
                onPressed: () => {},
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 21, right:29, left:29),
              height: 50,
              width: 317,
              child: ElevatedButton(
                style: ButtonStyle (
                    backgroundColor: MaterialStatePropertyAll( ColorUtils.defaultButtonGoogle)
                ),
                child: Text(
                  'Đăng nhập',
                  style:
                  StyleUtils.commonText(fontSize: 15, color: ColorUtils.defaultTextBlack),
                ),
                onPressed: () => {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
