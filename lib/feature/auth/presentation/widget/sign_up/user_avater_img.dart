import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/utils/animate_do.dart';
import 'package:store_app/generated/assets.dart';

class UserAvatarImg extends StatelessWidget {
  const UserAvatarImg({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 500,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            radius: 35.r,
            backgroundColor: Colors.blue,
            child: CircleAvatar(
              radius: 30.r,
              backgroundImage: AssetImage(Assets.customerUser),
            ),
          ),
          Positioned(
            bottom: -7.h,
            right: -7.w,
            child: CircleAvatar(
              radius: 15.r,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.camera_alt_outlined,
                size: 20.r,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
