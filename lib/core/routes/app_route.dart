import 'package:flutter/material.dart';
import 'package:store_app/core/routes/base_route.dart';
import 'package:store_app/core/widget/default_scr.dart';
import 'package:store_app/feature/auth/presentation/screens/login_scr.dart';
import 'package:store_app/feature/auth/presentation/screens/sign_up_scr.dart';

class AppRoutes{
  static const String login='/login';
  static const String signUp='/signup';
  static const String test2='/test2';
  static Route<void>onGenerateRoute(RouteSettings settings){
    final arg=settings.arguments;
    switch(settings.name){
      case login:
       return BaseRoute(page: LoginScr());
      case signUp:
       return BaseRoute(page: SignUpScr());
      case test2:
      //  return BaseRoute(page: TestScr2());
      default:
        return BaseRoute(page: DefaultScr());

    }
  }
}