import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor_management_system/utils/theme/theme.dart';

import 'features/authentication/screens/onboarding/onboarding.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: VAppTheme.lightTheme ,
      darkTheme: VAppTheme.darkTheme,
     // home: const OnBoardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
