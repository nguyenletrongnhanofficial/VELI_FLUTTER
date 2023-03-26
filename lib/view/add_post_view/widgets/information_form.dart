import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_flutter/controller/add_post_controller.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';

class InformationForm extends StatelessWidget {
  const InformationForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var addPostController = Get.put(AddPostController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          controller: addPostController.titleController,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Tiêu đề không được trống';
            }
            return null;
          },
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
          controller: addPostController.descriptionController,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Mô tả chi tiết không được trống';
            }
            return null;
          },
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
          controller: addPostController.priceController,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Vui lòng nhập giá bán';
            }
            return null;
          },
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
          controller: addPostController.universityController,
          validator: (value) {
            if (value!.isEmpty) {
              return "Tên trường không được trống";
            }
            return null;
          },
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
          controller: addPostController.addressController,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Địa chỉ không được trống';
            }
            return null;
          },
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
      ],
    );
  }
}
