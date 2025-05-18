import 'package:flutter/material.dart';
import 'package:store_app/core/style/colors/colors_dark.dart';
import 'package:store_app/core/style/colors/colors_light.dart';
import 'package:store_app/core/style/theme/app_color_exten.dart';
import 'package:store_app/core/style/theme/assets_extension.dart';

ThemeData appThemeLight (){
  return ThemeData(
  scaffoldBackgroundColor: ColorsLight.mainColor,
    extensions:const <ThemeExtension<dynamic>>[AppColor.light,AppAssets.light],

  );

}
ThemeData appThemeDark (){
  return ThemeData(
  scaffoldBackgroundColor: ColorsDark.mainColor,
    extensions:const <ThemeExtension<dynamic>>[AppColor.dark,AppAssets.dark],

  );
}
