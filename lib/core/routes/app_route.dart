import 'package:flutter/material.dart';
import 'package:store_app/core/routes/base_route.dart';
import 'package:store_app/core/widget/default_scr.dart';
import 'package:store_app/feature/testsc.dart';

class AppRoutes{
  static const String test='/test';
  static const String test1='/test1';
  static const String test2='/test2';
  static Route<void>onGenerateRoute(RouteSettings settings){
    final arg=settings.arguments;
    switch(settings.name){
      case test:
        return BaseRoute(page: Testsc());
      case test1:
        return BaseRoute(page: TestScr1());
      case test2:
        return BaseRoute(page: TestScr2());
      default:
        return BaseRoute(page: DefaultScr());

    }
  }
}