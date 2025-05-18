import 'package:flutter/material.dart';
import 'package:store_app/core/style/colors/colors_light.dart';

class AppColor extends ThemeExtension<AppColor>{
 const  AppColor({
   required this.mainColor,
});
  final Color? mainColor;
  @override
  ThemeExtension<AppColor> copyWith({
    Color?mainColor,
  }) {
    return AppColor(
      mainColor: mainColor ?? this.mainColor,
    );
  }

  @override
  ThemeExtension<AppColor> lerp(covariant ThemeExtension<AppColor>? other, double t) {

    if (other is! AppColor) {
      return this;
    }
    return AppColor(
      mainColor: mainColor
    );
  }
  static const AppColor light = AppColor(
    mainColor:ColorsLight.mainColor
  );
  static const AppColor dark = AppColor(
    mainColor: ColorsLight.mainColor
  );

}