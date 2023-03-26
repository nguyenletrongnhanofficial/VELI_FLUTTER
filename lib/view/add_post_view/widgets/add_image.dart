import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_flutter/controller/add_post_controller.dart';
import 'package:veli_flutter/utils/color_utils.dart';
import 'package:veli_flutter/utils/image_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';
import 'package:veli_flutter/view/add_post_view/widgets/item_image.dart';

class AddImage extends StatelessWidget {
  const AddImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var addPostController = Get.put(AddPostController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () async {
                  await addPostController.handlePickImages(context);
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: ColorUtils.defaultWhite,
                      ),
                      child: DottedBorder(
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
              ),
              Obx(
                    () => Expanded(
                  child: addPostController.listOfImage.isNotEmpty
                      ? Container(
                    padding: const EdgeInsets.only(left: 10),
                    height: 180,
                    child: GridView.count(
                      crossAxisCount: 3,
                      children: List.generate(
                        addPostController.listOfImage.length,
                            (index) => Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10),
                              child: Center(
                                child: ItemImage(urlImage: addPostController.listOfImage[index]),
                              ),
                            ),
                            Positioned(
                              top: 5,
                              right: 5,
                              child: InkWell(
                                onTap: () => addPostController.handleDelete(index),
                                child: Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle, color: ColorUtils.defaultButtonActive),
                                    child: Center(
                                        child: Icon(
                                          Icons.close,
                                          size: 20,
                                          color: ColorUtils.defaultWhite,
                                        ))),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                      : const Center(
                    child: Text("Bạn chưa thêm ảnh nào cả"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
