import 'package:flutter/material.dart';
import 'package:veli_flutter/utils/constant_utils.dart';
import 'package:veli_flutter/utils/style_utils.dart';

class FilterAppBar extends StatelessWidget {
  const FilterAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: ConstantUtils.defaultPadding),
        const Icon(Icons.keyboard_backspace),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Lọc',
                style: StyleUtils.commonText(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        const SizedBox(height: 48),
      ],
    );
  }
}
