import 'package:flutter/material.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/routes/app_route.dart';
import 'package:store_app/core/utils/context_extension.dart';

class Testsc extends StatelessWidget {
  const Testsc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr(LangKeys.appName)),
        leading: Icon(Icons.account_balance),
      ),
      body: Column(
        children: [
      TextButton(onPressed: (){
        context.pushNamed(AppRoutes.test1);
      }, child: Text('go to test 1')),
      TextButton(onPressed: (){
        context.pushNamed(AppRoutes.test2);
      }, child: Text('go to test 2')),
        ],
      ),
    );
  }
}
class TestScr1 extends StatelessWidget {
  const TestScr1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('go1'),
        leading: Icon(Icons.account_balance),
      ),
    );
  }
}
class TestScr2 extends StatelessWidget {
  const TestScr2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('go2'),
        leading: Icon(Icons.account_balance),
      ),
    );
  }
}

