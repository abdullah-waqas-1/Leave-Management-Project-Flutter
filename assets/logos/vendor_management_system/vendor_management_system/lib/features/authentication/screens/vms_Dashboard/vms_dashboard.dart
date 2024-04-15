import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vendor_management_system/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../signup.widgets/signup_form.dart';


class VMSDashboard extends StatelessWidget {
  const VMSDashboard({super.key});


  @override
  Widget build(BuildContext context) {
    final dark = VHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(VSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text("Please Enter Vendor's data",
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: VSizes.spacesBtwSections,
              ),

              /// Form
          Form(
            child: Column(
              children: [
                Row(
                  children: [
                    /// First name
                    Expanded(
                      child: TextFormField(
                        expands: false,
                        decoration: const InputDecoration(
                          labelText: "Umar",
                          prefixIcon: Icon(Iconsax.user),
                        ), // InputDecoration
                      ), // TextFormField
                    ),
                    const SizedBox(
                      width: VSizes.spaceBtwInputFields,
                    ),
                    /// Last name
                    Expanded(
                      child: TextFormField(
                        expands: false,
                        decoration: const InputDecoration(
                          labelText: "Farooq",
                          prefixIcon: Icon(Iconsax.user),
                        ), // InputDecoration
                      ), // TextFormField
                    ),
                  ],
                ),
                const SizedBox(
                  height: VSizes.spaceBtwInputFields,
                ),
                /// Email
                TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: "f21bseen1e02003@iub.edu.pk",
                      prefixIcon: Icon(Iconsax.direct),
                    )),
                const SizedBox(height: VSizes.spaceBtwInputFields,),
                /// Phone No
                TextFormField(decoration: const InputDecoration(
                  labelText: "+923025366826",
                  prefixIcon: Icon(Iconsax.call),
                )
                ),
                const SizedBox(height: VSizes.spacesBtwSections,),
                /// Term&conditions checkbox
                Row(
                  children: [
                    SizedBox(width: 20,height: 24,child: Checkbox(value: true, onChanged: (value){})),
                    const SizedBox(width: VSizes.spaceBtwItems,),
                    Text.rich( TextSpan(
                        children: [
                          TextSpan(text: '${VTexts.iAgreeTo} ',style: Theme.of(context).textTheme.bodySmall ),
                          TextSpan(text: '${VTexts.privacyPolicy} ',style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? VColors.white : VColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: dark ? VColors.white : VColors.primary,
                          )),
                          TextSpan(text: '${VTexts.and} ',style: Theme.of(context).textTheme.bodySmall ),
                          TextSpan(text: VTexts.termsOfUse,style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? VColors.white : VColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: dark ? VColors.white : VColors.primary,
                          )),
                        ]

                    ),
                    ),
                  ],
                ),
                const SizedBox(height: VSizes.spacesBtwSections,),
                /// Sign up button
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text("Add Vendor")),),
                const SizedBox(height: VSizes.spaceBtwInputFields,),
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text("Remove Vendor")),),
                const SizedBox(height: VSizes.spaceBtwInputFields,),
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text("Update Vendor")),),
              ],
            ),
          ),
              const SizedBox(
                height: VSizes.spacesBtwSections,
              ),


            ],
          ), // Column
        ), // Padding
      ), // SingleChildScrollView
    );
  }
}
