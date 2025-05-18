import 'package:flutter/material.dart';
import 'package:store_app/core/style/colors/colors_dark.dart';
import 'package:store_app/core/style/colors/colors_light.dart';

ThemeData appThemeLight (){
  return ThemeData(
  scaffoldBackgroundColor: ColorsLight.mainColor,
  );

}
ThemeData appThemeDark (){
  return ThemeData(
  scaffoldBackgroundColor: ColorsDark.mainColor,
  );
}
