import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/core/language/app_localizations.dart';
import 'package:store_app/core/style/theme/app_color_exten.dart';
import 'package:store_app/core/style/theme/assets_extension.dart';

extension ContextExt on BuildContext{
  //LANGUAGE
  String tr(String key) {
    return AppLocalizations.of(this)!.translate(key).toString();
  }
  ///color
  AppColor get color=>Theme.of(this).extension<AppColor>()!;
  ///assets
  ///font
  TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;

  AppAssets get assets=>Theme.of(this).extension<AppAssets>()!;
  ///navigation
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
   return Navigator.pushNamed(this, routeName, arguments: arguments);
  }
  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
   return Navigator.pushReplacementNamed(this, routeName, arguments: arguments);
  }
  Future<dynamic> pushAndRemoveUntil(String routeName, {Object? arguments}) {
   return Navigator.pushNamedAndRemoveUntil(this, routeName, (route) => false, arguments: arguments);
  }
  void pop()=> Navigator.pop(this);
}