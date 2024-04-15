import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor_management_system/common/widgets.login_signup/form_divider.dart';
import 'package:vendor_management_system/common/widgets.login_signup/social_buttons.dart';
import 'package:vendor_management_system/features/authentication/screens/signup.widgets/signup_form.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(VSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(VTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: VSizes.spacesBtwSections,
              ),

              /// Form
              const VSignUpForm(),
              const SizedBox(
                height: VSizes.spacesBtwSections,
              ),

              ///Divider
              VFormDivider(dividerText: VTexts.orSignUpWith.capitalize!),
              const SizedBox(
                height: VSizes.spaceBtwItems,
              ),

              /// Footer
              const VSocialButtons(),
            ],
          ), // Column
        ), // Padding
      ), // SingleChildScrollView
    );
// Scaffold
  }
}
