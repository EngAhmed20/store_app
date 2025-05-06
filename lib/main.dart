import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store_app/core/app/env.variables.dart';
import 'package:store_app/firebase_options.dart';
import 'package:store_app/store_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,
  );
  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);
 await SystemChrome.setPreferredOrientations([
   DeviceOrientation.portraitUp,DeviceOrientation.portraitDown
 ]).then((_){ runApp(const StoreApp());});
}



