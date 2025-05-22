import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store_app/core/app/bloc_observer.dart';
import 'package:store_app/core/app/connectivity_controller.dart';
import 'package:store_app/core/app/env.variables.dart';
import 'package:store_app/core/service/app_injection.dart';
import 'package:store_app/core/service/shared_pref/shared_pref.dart';
import 'package:store_app/firebase_options.dart';
import 'package:store_app/store_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = AppBlocObserver();
  ///get it
  setup();
  await SharedPref().instantiatePreferences();
  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);
  await ConnectivityController.instance.init();

  await SystemChrome.setPreferredOrientations([
   DeviceOrientation.portraitUp,DeviceOrientation.portraitDown
 ]).then((_){ runApp(const StoreApp());});
}



