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

class DescriptionView extends StatelessWidget {
  const DescriptionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var descriptionController = Get.put(DescriptionController());
    return Scaffold(
        body: Stack(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: context.height * 0.4,
                width: context.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage(ImageUtils.backgroundDesc), fit: BoxFit.cover),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: context.height * 0.2,
                  width: context.width,
                  decoration: BoxDecoration(
                    color: ColorUtils.backgroundDesc,
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(ConstantUtils.defaultPadding, ConstantUtils.defaultPadding + 5,
                        ConstantUtils.defaultPadding, ConstantUtils.defaultPadding / 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Nguyễn Lê Trọng Nhân',
                          style: StyleUtils.commonText(fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Bán tài liệu hệ thống nhúng',
                          style: StyleUtils.commonText(fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: ConstantUtils.defaultPadding / 2),
                          child: Text(
                            'Giá: 500k VNĐ',
                            style: StyleUtils.commonText(
                                fontSize: 16, fontWeight: FontWeight.w400, color: ColorUtils.defaultTextRed),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Trường ĐH CNTT (UIT)',
                              style: StyleUtils.commonText(
                                  fontSize: 16, fontWeight: FontWeight.w400, color: ColorUtils.defaultTextInformation),
                            ),
                            Text(
                              '1 ngày trước',
                              style: StyleUtils.commonText(
                                  fontSize: 16, fontWeight: FontWeight.w400, color: ColorUtils.defaultTextInformation),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: context.height * 0.2 - 60,
                left: 0,
                right: 0,
                child: Container(
                  height: 88,
                  width: 88,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorUtils.defaultWhite,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage(ImageUtils.avatar), fit: BoxFit.contain)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
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
          )
        ],
      ),
      Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: 30,
              left: ConstantUtils.defaultPadding * 2,
              right: ConstantUtils.defaultPadding * 2,
            ),
            child: SizedBox(
              height: 112,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap:(){},
                    child: Container(
                      height: 50,
                      width: context.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorUtils.defaultButtonDisable,
                      ),
                      child: Center(
                        child: Text(
                          'Gọi cho người bán',
                          style: StyleUtils.commonText(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: ColorUtils.defaultTextDisable,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: 50,
                      width: context.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorUtils.defaultButtonActive,
                      ),
                      child: Center(
                        child: Text(
                          'NHĂN TIN VỚI NGƯỜI BÁN',
                          style: StyleUtils.commonText(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: ColorUtils.defaultWhite,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ))
    ]));
  }
}
