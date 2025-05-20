import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/style/fonts/font_weight_helper.dart';
import 'package:store_app/core/utils/animate_do.dart';
import 'package:store_app/core/utils/context_extension.dart';
import 'package:store_app/feature/auth/presentation/widget/auth_title.dart';
import 'package:store_app/feature/auth/presentation/widget/login/login_button.dart';
import 'package:store_app/feature/auth/presentation/widget/login/login_text_form.dart';
import 'package:store_app/feature/auth/presentation/widget/theme_lang_buttons.dart';
 
class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
    child: SingleChildScrollView(
      child: Column(
        children: [
            /// lang & theme
            ThemeAndLangButton(),
             SizedBox(height: 20.h,),
            AuthTitle(title: LangKeys.login,subtitle: LangKeys.welcome,),
            SizedBox(height: 30.h,),
            LoginTextForm(),
            SizedBox(height: 50.h,),
          ///login button
          LoginButton(),
          SizedBox(height: 30.h,),
          Row(
            children: [
              CustomFadeInDown(
                duration: 400,
                child: InkWell(
                  borderRadius: BorderRadius.circular(10.r),
                  onTap: (){print('hello');},
                  child: Text(context.tr(LangKeys.createAccount),style:context.textStyle.copyWith(
                    fontSize: 15.sp,
                    color: context.color.bluePinkLight,
                    fontWeight: FontWeightHelper.semiBold,
                  )
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    );
  }
}
