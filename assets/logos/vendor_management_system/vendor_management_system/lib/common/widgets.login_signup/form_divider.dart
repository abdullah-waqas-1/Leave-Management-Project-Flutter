import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor_management_system/utils/helpers/helper_functions.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/text_strings.dart';
class VFormDivider extends StatelessWidget {
  const VFormDivider({ super.key, required this.dividerText});

final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = VHelperFunctions.isDarkMode(context);
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(child: Divider(color: dark? VColors.darkGrey: VColors.grey, thickness: 0.5, indent: 60, endIndent:5)),
          Text(dividerText,style: Theme.of(context).textTheme.labelMedium,),
          Flexible(child: Divider(color: dark? VColors.darkGrey: VColors.grey, thickness: 0.5, indent: 5, endIndent:60)),
        ]  );
  }
}