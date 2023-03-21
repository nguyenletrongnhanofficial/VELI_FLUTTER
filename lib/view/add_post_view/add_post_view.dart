import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/constant_utils.dart';
import 'package:veli_flutter/utils/image_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';

class AddPostView extends StatelessWidget {
  const AddPostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.defaultBackground,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: ConstantUtils.defaultPadding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: ConstantUtils.defaultPadding / 2),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_backspace),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: ConstantUtils.defaultPadding),
                  child: Text(
                    'ĐĂNG TÀI LIỆU',
                    style: StyleUtils.commonText(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: ColorUtils.defaultTextTitle,
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ImageUtils.avatar),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(11),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Trọng Nhân',
                            style: StyleUtils.commonText(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: ColorUtils.defaultTextTitle,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'UIT, Thủ Đức',
                            style: StyleUtils.commonText(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: ColorUtils.defaultTextDescription,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 17),
                Text(
                  'Tiêu đề',
                  style: StyleUtils.commonText(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: ColorUtils.defaultTextTitle,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  textInputAction: TextInputAction.next,
                  style: StyleUtils.commonText(fontSize: 11),
                  decoration: InputDecoration(
                    hintStyle: StyleUtils.commonText(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: ColorUtils.defaultTextHint,
                    ),
                    hintText: 'Viết tiêu đề tài liệu bạn cần bán',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 13,
                      horizontal: 10,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                    isDense: true,
                  ),
                ),
                const SizedBox(height: 25),
                Text(
                  'Mô tả chi tiết',
                  style: StyleUtils.commonText(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: ColorUtils.defaultTextTitle,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: StyleUtils.commonText(fontSize: 11),
                  maxLines: 7,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintStyle: StyleUtils.commonText(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: ColorUtils.defaultTextHint,
                    ),
                    hintText: 'Mô tả càng chi tiết sẽ khiến bạn dễ dàng bán hơn',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 13,
                      horizontal: 10,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                    isDense: true,
                  ),
                ),
                const SizedBox(height: 25),
                Text(
                  'Giá',
                  style: StyleUtils.commonText(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: ColorUtils.defaultTextTitle,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: StyleUtils.commonText(fontSize: 11),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintStyle: StyleUtils.commonText(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: ColorUtils.defaultTextHint,
                    ),
                    hintText: 'Nhập giá tiền mà bạn cần bán',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 13,
                      horizontal: 10,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                    isDense: true,
                  ),
                ),
                const SizedBox(height: 25),
                Text(
                  'Trường',
                  style: StyleUtils.commonText(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: ColorUtils.defaultTextTitle,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: StyleUtils.commonText(fontSize: 11),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintStyle: StyleUtils.commonText(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: ColorUtils.defaultTextHint,
                    ),
                    hintText: 'Nhập tên trường để mọi người dễ tìm thấy tài liệu hơn',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 13,
                      horizontal: 10,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                    isDense: true,
                  ),
                ),
                const SizedBox(height: 25),
                Text(
                  'Địa chỉ',
                  style: StyleUtils.commonText(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: ColorUtils.defaultTextTitle,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: StyleUtils.commonText(fontSize: 11),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintStyle: StyleUtils.commonText(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: ColorUtils.defaultTextHint,
                    ),
                    hintText: 'Nhập địa chỉ bạn cần bán',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 13,
                      horizontal: 10,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                    isDense: true,
                  ),
                ),
                const SizedBox(height: 25),
                Text(
                  'Thêm ảnh',
                  style: StyleUtils.commonText(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: ColorUtils.defaultTextTitle,
                  ),
                ),
                const SizedBox(height: 17),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          DottedBorder(
                            borderType: BorderType.RRect,
                            radius: const Radius.circular(12),
                            padding: const EdgeInsets.all(6),
                            color: ColorUtils.defaultButtonActive,
                            strokeWidth: 1,
                            dashPattern: const [5, 5],
                            child: Container(
                              padding: const EdgeInsets.all(16.0),
                              child: Image.asset(ImageUtils.addImage),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Tối đa 5 ảnh",
                            style: StyleUtils.commonText(
                              fontSize: 11,
                              fontWeight: FontWeight.w900,
                              color: ColorUtils.defaultTextTitle,
                            ),
                          ),
                        ],
                      ),
                      // Expanded(
                      //   child: GridView.builder(
                      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      //       crossAxisCount: 2,
                      //       crossAxisSpacing: 16,
                      //       mainAxisSpacing: 16,
                      //     ),
                      //     itemCount: 5,
                      //     itemBuilder: (context, index) => GestureDetector(
                      //       onTap: () {
                      //         // xử lý sự kiện khi người dùng chọn ảnh
                      //       },
                      //       child: Container(height: 30,width: 30,color: Colors.red,)
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
                const SizedBox(height: 44),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: context.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorUtils.defaultButtonActive,
                    ),
                    child: Center(
                      child: Text(
                        'ĐĂNG BÀI',
                        style: StyleUtils.commonText(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: ColorUtils.defaultWhite,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 52),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
