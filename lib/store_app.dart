import 'package:flutter/material.dart';
import 'package:store_app/core/app/connectivity_controller.dart';
import 'package:store_app/core/utils/no_internet_scr.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: ConnectivityController.instance.isConnected,
        builder:(_,value,__) {
      if(value){
        return MaterialApp(
          title: 'Store',
          debugShowCheckedModeBanner: true,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),

          home:Scaffold(
            appBar:AppBar(
              backgroundColor: Colors.blue,
              title: Text('Store App',style: TextStyle(color: Colors.black),),
              centerTitle: true,),

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
