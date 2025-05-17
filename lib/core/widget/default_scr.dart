import 'package:flutter/material.dart';
import 'package:store_app/generated/assets.dart';

class DefaultScr extends StatelessWidget {
  const DefaultScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.corePageUnderBuild),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
