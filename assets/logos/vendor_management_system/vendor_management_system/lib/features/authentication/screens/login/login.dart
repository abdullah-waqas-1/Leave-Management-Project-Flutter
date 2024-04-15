import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vendor_management_system/features/authentication/screens/signup.widgets/signup.dart';
import 'package:vendor_management_system/utils/constants/image_strings.dart';
import 'package:vendor_management_system/utils/constants/text_strings.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets.login_signup/form_divider.dart';
import '../../../../common/widgets.login_signup/social_buttons.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import 'login_form.dart';
import 'login_header.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});




@override
Widget build(BuildContext context) {

  return Scaffold(
    body: SingleChildScrollView(
      child: Padding(
        padding: VSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            /// Logo, Title & Sub-Title
            const VLoginHeader(),
            const VLoginForm(), // SingleChildScrollView
          ///Divider
           VFormDivider(dividerText: VTexts.orSignUpWith.capitalize!,),
            const SizedBox(height: VSizes.spacesBtwSections,),
       /// Footer
            const VSocialButtons()

    ],
  ),
    ),
    ),
  );
}
// Scaffold
}







