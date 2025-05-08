import 'package:flutter/material.dart';
import 'package:store_app/generated/assets.dart';

class NoInternetScr extends StatelessWidget {
  const NoInternetScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.coreNoNetwork),
            fit: BoxFit.contain,
          ),
        ),

      ),

    );
  }
}
