import 'package:flutter/material.dart';
import 'package:store_app/core/style/colors/colors_dark.dart';
import 'package:store_app/core/style/colors/colors_light.dart';
import 'package:store_app/core/style/fonts/font_family_helper.dart';
import 'package:store_app/core/style/fonts/font_weight_helper.dart';
import 'package:store_app/core/style/theme/app_color_exten.dart';
import 'package:store_app/core/style/theme/assets_extension.dart';

ThemeData appThemeDark (){
  return ThemeData(
  scaffoldBackgroundColor: ColorsDark.mainColor,
    extensions:const <ThemeExtension<dynamic>>[AppColor.dark,AppAssets.dark],
    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeightHelper.regular,
          color: ColorsDark.white,
        fontFamily: FontFamilyHelper.getFontFamily()

      ),
      displayMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeightHelper.regular,
          color: ColorsDark.white,
        fontFamily: FontFamilyHelper.getFontFamily()
      ),
      displayLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeightHelper.regular,
          color: ColorsDark.white,
        fontFamily: FontFamilyHelper.getFontFamily()
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeightHelper.regular,
          color: ColorsDark.white,
        fontFamily: FontFamilyHelper.getFontFamily()
      ),
      headlineLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeightHelper.regular,
          color: ColorsDark.white,
        fontFamily: FontFamilyHelper.getFontFamily()
      ),
      titleMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeightHelper.regular,
          color: ColorsDark.white,
        fontFamily: FontFamilyHelper.getFontFamily()
      ),
      titleLarge: TextStyle(
        fontSize: 26,
        fontWeight: FontWeightHelper.regular,
          color: ColorsDark.white,
        fontFamily: FontFamilyHelper.getFontFamily()
      ),
    )

  );
}
ThemeData appThemeLight (){
  return ThemeData(
      scaffoldBackgroundColor: ColorsLight.mainColor,
      extensions:const <ThemeExtension<dynamic>>[AppColor.light,AppAssets.light],
      textTheme: TextTheme(
        displaySmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeightHelper.regular,
            color: ColorsLight.black,
            fontFamily: FontFamilyHelper.getFontFamily()

        ),
        displayMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeightHelper.regular,
            color: ColorsLight.black,
            fontFamily: FontFamilyHelper.getFontFamily()
        ),
        displayLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeightHelper.regular,
            color: ColorsLight.black,
            fontFamily: FontFamilyHelper.getFontFamily()
        ),
        headlineMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeightHelper.regular,
            color: ColorsLight.black,
            fontFamily: FontFamilyHelper.getFontFamily()
        ),
        headlineLarge: TextStyle(
            fontSize: 22,
            fontWeight: FontWeightHelper.regular,
            color: ColorsLight.black,
            fontFamily: FontFamilyHelper.getFontFamily()
        ),
        titleMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeightHelper.regular,
            color: ColorsLight.black,
            fontFamily: FontFamilyHelper.getFontFamily()
        ),
        titleLarge: TextStyle(
            fontSize: 26,
            fontWeight: FontWeightHelper.regular,
            color: ColorsLight.black,
            fontFamily: FontFamilyHelper.getFontFamily()
        ),
      )


  );

}
