import 'package:flutter/material.dart';
import 'package:vendor_management_system/utils/helpers/helper_functions.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';
class VSocialButtons extends StatelessWidget {
  const VSocialButtons({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final dark = VHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: VColors.grey),borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
              width: VSizes.iconMd,
              height: VSizes.iconMd,
              image: AssetImage(VImages.google),
            ),
          ),
        ),
        const SizedBox(width: VSizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(border: Border.all(color: VColors.grey),borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
              width: VSizes.iconMd,
              height: VSizes.iconMd,
              image: AssetImage(VImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}