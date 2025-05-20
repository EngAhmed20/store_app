import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/style/fonts/font_weight_helper.dart';
import 'package:store_app/core/utils/animate_do.dart';
import 'package:store_app/core/utils/context_extension.dart';
class AuthTitle extends StatelessWidget {
  const AuthTitle({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 400,
      child: Column(
        children: [
          Text(
            context.tr(title),
            textAlign: TextAlign.center,
            style:context.textStyle.copyWith(
              fontSize: 24.sp,
              fontWeight: FontWeightHelper.bold,),
          ),
          SizedBox(height: 10.h),
          Text(
            context.tr(subtitle),
            textAlign: TextAlign.center,
            style: context.textStyle.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeightHelper.regular,
            ),
          ),
        ],
      ),
    );
  }
}
