import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/connectivity_controller.dart';
import 'package:store_app/core/utils/no_internet_scr.dart';
import 'package:store_app/feature/testsc.dart';


class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: ConnectivityController.instance.isConnected,
        builder:(_,value,__) {
      if(value){
        return ScreenUtilInit(
          designSize: Size(375, 812),
          minTextAdapt: true,
          child: MaterialApp(
            title: 'Store',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),

            home:Testsc(),
          ),
        );

      }else{
        return MaterialApp(
          title: 'No Internet',
          debugShowCheckedModeBanner: false,
          home: NoInternetScr(),
        );

      }
        });
  }
}

/*
class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Store App'),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.red, // خلفية حمراء
          child: Center( // وضع النص في منتصف الشاشة
            child: Text(
              'containeer',
              style: TextStyle(
                fontSize: 24, // تحديد حجم النص
                color: Colors.white, // التأكد من أن النص يظهر بوضوح
              ),
            ),
          ),
        ),
      ),
    );
  }
}

 */