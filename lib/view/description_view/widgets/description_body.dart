import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:veli_flutter/controller/description_controller.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/constant_utils.dart';
import 'package:veli_flutter/utils/image_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';

class DescriptionBody extends StatelessWidget {
  const DescriptionBody({
    super.key,
    required this.descriptionController,
  });

  final DescriptionController descriptionController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.6,
      padding: EdgeInsets.all(ConstantUtils.defaultPadding),
      child: Scrollable(
          axisDirection: AxisDirection.down,
          physics: const BouncingScrollPhysics(),
          viewportBuilder: (BuildContext context, ViewportOffset offset) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mô tả tài liệu',
                    style: StyleUtils.commonText(
                        fontSize: 14, fontWeight: FontWeight.w700, color: ColorUtils.defaultTextTitle),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Đây là tài liệu môn triết học do tôi xưa tôi họ tôi nợ 2 3 lần nên tôi cáu quá tôi bán lại cho các bạn lấy hên, tài liệu gồm 1000 trang tổng hợp tất cả các nguyên lý về vũ trụ,...\nCho nên tôi pass rẻ cho ai cần,\nGiá 500k mong anh em đừng trả giá",
                    style: StyleUtils.commonText(
                        fontSize: 12, fontWeight: FontWeight.w400, color: ColorUtils.defaultTextDescription),
                  ),
                  const SizedBox(height: 17),
                  Padding(
                    padding: EdgeInsets.only(left: ConstantUtils.defaultPadding / 2),
                    child: Text(
                      'Xem thêm',
                      style: StyleUtils.commonText(
                          fontSize: 12, fontWeight: FontWeight.w400, color: ColorUtils.defaultTextInformation),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Text(
                    'Hình ảnh',
                    style: StyleUtils.commonText(
                        fontSize: 14, fontWeight: FontWeight.w700, color: ColorUtils.defaultTextTitle),
                  ),
                  const SizedBox(height: 17),
                  Center(
                    child: Container(
                      height: 150,
                      width: 267,
                      decoration: const BoxDecoration(
                          image:
                          DecorationImage(image: AssetImage(ImageUtils.imageDocument), fit: BoxFit.contain)),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Vị trí',
                    style: StyleUtils.commonText(
                        fontSize: 14, fontWeight: FontWeight.w700, color: ColorUtils.defaultTextTitle),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    descriptionController.location.value,
                    style: StyleUtils.commonText(
                        fontSize: 12, fontWeight: FontWeight.w400, color: ColorUtils.defaultTextDescription),
                  ),
                  const SizedBox(height: 17),
                  Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: ConstantUtils.defaultPadding + 1),
                      height: 151,
                      width: 333,
                      child: Obx(()=>
                          SizedBox(
                            height: 151, width: 333,
                            child: GoogleMap(
                              gestureRecognizers: {
                                Factory<OneSequenceGestureRecognizer>(() => EagerGestureRecognizer()),
                              },
                              mapType: MapType.normal,
                              initialCameraPosition: descriptionController.kGooglePlex,
                              markers: Set<Marker>.from(descriptionController.markers),
                              myLocationEnabled: true,
                              scrollGesturesEnabled: true,
                              myLocationButtonEnabled: true,
                              zoomGesturesEnabled: true,
                              zoomControlsEnabled: true,
                              onMapCreated: (GoogleMapController controller) {
                                descriptionController.mapController.value = controller;
                              },
                            ),
                          ),
                      ),
                    ),
                  ),
                  SizedBox(height: context.height * 0.2),
                ],
              ),
            );
          }),
    );
  }
}