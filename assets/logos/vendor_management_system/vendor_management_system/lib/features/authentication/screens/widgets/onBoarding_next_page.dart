import 'package:flutter/material.dart';
import 'package:vendor_management_system/features/authentication/controllers.onboarding/onboarding_controller.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';
class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = VHelperFunctions.isDarkMode(context);
    return Positioned (
      right: VSizes.defaultSpace+2,
      bottom: VDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () =>OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor: dark ? VColors.success:VColors.dark),
        child: const Icon (Icons.arrow_forward_ios_rounded,size: 20,),
      ), // ElevatedButton
    );
  }
}