import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/utils/context_extension.dart';
import 'package:store_app/feature/auth/presentation/refactors/auth_custom_printer.dart';
import 'package:store_app/feature/auth/presentation/refactors/signup_body.dart';

class SignUpScr extends StatelessWidget {
  const SignUpScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomPaint(
        size:Size(MediaQuery.of(context).size.width, 150.h),
        painter:AuthCustomPainter(gradient:LinearGradient(colors: [
          context.color.bluePinkLight!,
          context.color.bluePinkLight!,
          context.color.bluePinkLight!,
          context.color.bluePinkDark!,
          ],)),
      ),
      body: SafeArea(child: SignUpBody()),
    );
  }
}
