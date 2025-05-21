import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/style/fonts/font_weight_helper.dart';
import 'package:store_app/core/utils/animate_do.dart';
import 'package:store_app/core/utils/context_extension.dart';
import 'package:store_app/core/widget/custom_linear_button.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInRight(
        child: CustomLinearButton(
          onPressed: () {},
          child: Text(
            context.tr(
              LangKeys.createAccount,
            ),
            style: context.textStyle.copyWith(
              fontSize: 20,
              fontWeight: FontWeightHelper.bold,
            ),
          ),
          width: double.infinity,
          height: 50.h,
        ),
        duration: 400);
  }
}