import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vendor_management_system/features/authentication/screens/vms_Dashboard/vms_dashboard.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../signup.widgets/signup.dart';

class VLoginForm extends StatelessWidget {
  const VLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: VSizes.spacesBtwSections),
        child: Column(
          children: [
            ///Email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: VTexts.email),
            ),
            const SizedBox(
              height: VSizes.spaceBtwInputFields,
            ),
            /// Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: VTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
                height: VSizes.spaceBtwInputFields/2
            ),
            ///Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Remember Me
                Row(
                  children: [
                    Checkbox (value: true, onChanged: (value){}),
                    const Text (VTexts.rememberMe),
                  ],
                ),
                // Row
                /// Forget Password
                TextButton(onPressed: (){}, child: const Text (VTexts.forgetPassword),),
              ],
            ),
            const SizedBox(height: VSizes.spacesBtwSections,),


            /// Sign In Button
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => Get.to(() => const VMSDashboard()), child: const Text(VTexts.signIn))),
            const SizedBox(height: VSizes.spaceBtwItems,),
            /// Create account button
            SizedBox(width: double.infinity,child: OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()), child: const Text(VTexts.createAccount))),

          ], // Column
        ),
      ), // Padding
    );
  }
}