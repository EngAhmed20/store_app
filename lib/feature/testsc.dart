import 'package:flutter/material.dart';
import 'package:store_app/generated/assets.dart';

class Testsc extends StatelessWidget {
  const Testsc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('go'),
        leading: Icon(Icons.account_balance),
      ),
      body: Column(
        children: [
          // إضافة صورة مع التأكد من أن الصورة تعمل بشكل صحيح
          Image.asset(Assets.coreSplash),
          SizedBox(height: 20),  // زيادة المسافة بين الصورة والنص

          // تغيير اللون والتأكد من أن النص يظهر بوضوح
          Text(
            'Test Screen',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,  // تغيير لون النص إلى الأبيض
              backgroundColor: Colors.black,  // خلفية سوداء للنص
              fontWeight: FontWeight.bold, // زيادة سماكة النص
            ),
          ),
        ],
      ),
    );
  }
}
