import 'package:flutter/material.dart';
import 'package:store_app/generated/assets.dart';

class AppAssets extends ThemeExtension<AppAssets> {
  const AppAssets({
    required this.bigNavBar,
    required this.homeBg,
  });

  final String? bigNavBar;
  final String? homeBg;

  @override
  ThemeExtension<AppAssets> copyWith({
    String? bigNavBar,
    String? homeBg,
  }) {
    return AppAssets(
      bigNavBar: bigNavBar,
      homeBg: homeBg,
    );
  }

  @override
  ThemeExtension<AppAssets> lerp(
      covariant ThemeExtension<AppAssets>? other,
      double t,
      ) {
    if (other is! AppAssets) {
      return this;
    }
    return AppAssets(
      bigNavBar: bigNavBar,
      homeBg: homeBg,
    );
  }

  static const AppAssets dark = AppAssets(
    bigNavBar: Assets.customerBigNavBarDark,
    homeBg: Assets.customerHomeBgDark,
  );
  static const AppAssets light = AppAssets(
    bigNavBar: Assets.customerBigNavBarLight,
    homeBg:Assets.customerHomeBgLight,
  );
}
