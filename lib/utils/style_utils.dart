import 'package:flutter/material.dart';
import 'package:veli_flutter/utils/color_utils.dart';

class StyleUtils {
  static TextStyle commonText({double? fontSize, Color? color, FontWeight? fontWeight, FontStyle? fontStyle}) {
    return TextStyle(
      fontSize: fontSize ?? 12,
      fontFamily: "Veli_Regular",
      color: color ?? ColorUtils.defaultTextBlack,
      fontWeight: fontWeight ?? FontWeight.normal,
      fontStyle: fontStyle ?? FontStyle.normal,
    );
  }
}
