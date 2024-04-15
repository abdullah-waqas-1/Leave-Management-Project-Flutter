import 'package:flutter/material.dart';
import 'package:vendor_management_system/utils/theme/custom_themes/appbar_theme.dart';
import 'package:vendor_management_system/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:vendor_management_system/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:vendor_management_system/utils/theme/custom_themes/chip_theme.dart';
import 'package:vendor_management_system/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:vendor_management_system/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:vendor_management_system/utils/theme/custom_themes/text_field_theme.dart';
import 'package:vendor_management_system/utils/theme/custom_themes/text_theme.dart';

class VAppTheme{
  VAppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'poppin',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: VTextTheme.lightTextTheme,
    elevatedButtonTheme: VElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: VAppBarTheme.lightAppBarTheme,
    checkboxTheme: VCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: VBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: VOutlinedButtonTheme.lightOutlinedButtonTheme,
    chipTheme: VChipTheme.lightChipTheme,
    inputDecorationTheme: VTextFormFieldTheme.lightInputDecorationTheme,

  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'poppin',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: VTextTheme.darkTextTheme,
    elevatedButtonTheme: VElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: VAppBarTheme.darkAppBarTheme,
    checkboxTheme: VCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: VBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: VOutlinedButtonTheme.darkOutlinedButtonTheme,
    chipTheme: VChipTheme.darkChipTheme,
    inputDecorationTheme: VTextFormFieldTheme.darkInputDecorationTheme,
  );

}