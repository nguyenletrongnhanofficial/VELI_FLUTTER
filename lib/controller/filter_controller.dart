import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterController extends GetxController {
  var universityController = TextEditingController();
  var subjectController = TextEditingController();
  var addressController = TextEditingController();
  Rx<RangeValues> rangeValue = const RangeValues(200000.0, 800000.0).obs;
  RxDouble minPrice = 0.0.obs;
  RxDouble maxPrice = 2000000.0.obs;

  String convertToCurrencyString(double number) {
    String currencyString = number.toStringAsFixed(0);
    RegExp regex = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
    return '${currencyString.replaceAllMapped(regex, (Match match) => '${match[1]}.')} đ';
  }
}
