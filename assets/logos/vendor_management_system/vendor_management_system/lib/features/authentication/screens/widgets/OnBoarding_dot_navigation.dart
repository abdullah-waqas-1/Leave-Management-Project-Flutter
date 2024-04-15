import 'package:flutter/material.dart';
//import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vendor_management_system/features/authentication/controllers.onboarding/onboarding_controller.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';
// class OnBoardingDotNavigation extends StatelessWidget {
//   const OnBoardingDotNavigation({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = OnBoardingController.instance;
//     final dark = VHelperFunctions.isDarkMode(context);
//     return Positioned(
//       bottom: VDeviceUtils.getBottomNavigationBarHeight() + 25,
//       left: VSizes.defaultSpace,
//       child: SmoothPageIndicator(
//         count: 3,
//         controller: controller.pageController,
//         onDotClicked: controller.dotNavigationClick,
//         effect: ExpandingDotsEffect(activeDotColor: dark ? VColors.light:VColors.dark, dotHeight: 6),
//       ),
//     );
//   }
// }