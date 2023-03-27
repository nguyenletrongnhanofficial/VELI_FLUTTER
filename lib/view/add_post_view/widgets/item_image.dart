import 'dart:io';

import 'package:flutter/material.dart';
import 'package:veli_flutter/utils/color_utils.dart';

class ItemImage extends StatelessWidget {
  final String urlImage;
  const ItemImage({Key? key, required this.urlImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorUtils.defaultWhite,
        border: Border.all(width: 1, color: ColorUtils.defaultLineBox),
        image: DecorationImage(image: FileImage(File(urlImage)),fit: BoxFit.contain)
      ),
    );
  }
}
