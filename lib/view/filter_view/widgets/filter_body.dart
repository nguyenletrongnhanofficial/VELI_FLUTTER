import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_flutter/controller/filter_controller.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';

class FilterBody extends StatelessWidget {
  const FilterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var filterController = Get.put(FilterController());
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Trường học',
            style: StyleUtils.commonText(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: ColorUtils.defaultTextTitle,
            ),
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(top: 6, bottom: 2.0),
              child: Icon(Icons.keyboard_arrow_up),
            ),
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: filterController.universityController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Trường học không được trống';
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
              hintText: 'Đại học Khoa học tự nhiên',
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
          const SizedBox(height: 31),
          Text(
            'Môn học',
            style: StyleUtils.commonText(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: ColorUtils.defaultTextTitle,
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: filterController.subjectController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Môn học không được trống';
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
              hintText: 'Nhập môn lập trình',
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
          const SizedBox(height: 16),
          Text(
            'Địa điểm',
            style: StyleUtils.commonText(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: ColorUtils.defaultTextTitle,
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: filterController.subjectController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Địa điểm không được trống';
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
              hintText: 'Gần ký túc xá khu B',
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
          const SizedBox(height: 31),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Giá thấp nhất',
                style: StyleUtils.commonText(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: ColorUtils.defaultBlack,
                ),
              ),
              Text(
                'Giá cao nhất',
                style: StyleUtils.commonText(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: ColorUtils.defaultBlack,
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Giá',
                style: StyleUtils.commonText(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: ColorUtils.defaultTextTitle,
                ),
              ),
              const Icon(Icons.keyboard_arrow_up),
            ],
          ),
          SliderTheme(
            data: const SliderThemeData(
              trackHeight: 2,
            ),
            child: RangeSlider(
              values: filterController.rangeValue.value,
              min: filterController.minPrice.value,
              max: filterController.maxPrice.value,
              activeColor: ColorUtils.defaultActiveLine,
              inactiveColor: ColorUtils.defaultInactiveLine,
              labels: RangeLabels(
                filterController.rangeValue.value.start.round().toString(),
                filterController.rangeValue.value.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                filterController.rangeValue.value = values;
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                filterController.convertToCurrencyString(filterController.rangeValue.value.start),
                style: StyleUtils.commonText(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                filterController.convertToCurrencyString(filterController.rangeValue.value.end),
                style: StyleUtils.commonText(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
