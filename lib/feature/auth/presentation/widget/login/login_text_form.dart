import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/utils/animate_do.dart';
import 'package:store_app/core/utils/app_regex.dart';
import 'package:store_app/core/utils/context_extension.dart';
import 'package:store_app/core/widget/custom_text_field.dart';

class LoginTextForm extends StatefulWidget {
  const LoginTextForm({super.key});

  @override
  State<LoginTextForm> createState() => _LoginTextFormState();
}

class _LoginTextFormState extends State<LoginTextForm> {
  bool hidePass=true;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        ///email
        CustomFadeInRight(
            duration: 200,
            child: CustomTextField(controller: emailController,
            hintText: context.tr(LangKeys.email),
              keyboardType:TextInputType.emailAddress,
              validator: (value){
              if(!AppRegex.isEmailValid(emailController.text)){
                return context.tr(LangKeys.validEmail);
              }
              return null;
              },
            )
        ),
         SizedBox(height: 20.h),
        ///pass
        CustomFadeInRight(
            duration: 200,
            child: CustomTextField(controller: passwordController,
              hintText: context.tr(LangKeys.password),
              obscureText: hidePass,
              keyboardType:TextInputType.visiblePassword,
              validator: (value){
                if(value==null|| value.isEmpty||value.length<6){
                  return context.tr(LangKeys.validPasswrod);
                }
                return null;
              },
              suffixIcon: IconButton(onPressed: (){
                setState(() {
                  hidePass=!hidePass;
                });
              }, icon: Icon(hidePass?Icons.visibility_off_outlined:Icons.visibility_outlined,color: context.color.textColor,))
            )
        ),

      ],
    ));
  }
}
