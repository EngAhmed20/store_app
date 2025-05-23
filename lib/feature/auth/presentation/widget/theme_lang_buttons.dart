import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/app_cubit/app_cubit.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/style/fonts/font_weight_helper.dart';
import 'package:store_app/core/utils/animate_do.dart';
import 'package:store_app/core/utils/context_extension.dart';
import 'package:store_app/core/widget/custom_linear_button.dart';

class ThemeAndLangButton extends StatelessWidget {
  const ThemeAndLangButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppCubit>();
    return BlocBuilder(
        bloc: cubit,
        builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomFadeInRight(
                  duration: 400,
                  child: CustomLinearButton(
                      onPressed: () {
                        cubit.changeThemeMode();
                      },
                      child: Icon(
                        cubit.isDarkMode
                            ? Icons.dark_mode_outlined
                            : Icons.light_mode_outlined,
                        color: Colors.white,
                        size: 22.h,
                      ))),
              CustomFadeInLeft(
                duration: 400,
                child: CustomLinearButton(
                    width: 70.w,
                    height: 40.h,
                    onPressed: () {cubit.toggleLanguage();},
                    child: Text(
                      context.tr(LangKeys.appLanguage),
                      style: context.textStyle.copyWith(
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeightHelper.bold,
                      ),
                    )),
              )
            ],
          );
        });
  }
}
