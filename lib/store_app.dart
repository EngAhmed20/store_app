import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/app_cubit/app_cubit.dart';
import 'package:store_app/core/app/connectivity_controller.dart';
import 'package:store_app/core/language/app_localizations_setup.dart';
import 'package:store_app/core/routes/app_route.dart';
import 'package:store_app/core/service/app_injection.dart';
import 'package:store_app/core/service/shared_pref/pref_keys.dart';
import 'package:store_app/core/service/shared_pref/shared_pref.dart';
import 'package:store_app/core/style/theme/app_theme.dart';
import 'package:store_app/core/utils/no_internet_scr.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: ConnectivityController.instance.isConnected,
        builder: (_, value, __) {
          if (value) {
            return BlocProvider(
              create: (context) => getIt<AppCubit>(),
              child: ScreenUtilInit(
                  designSize: Size(375, 812),
                  minTextAdapt: true,
                  child: BlocBuilder<AppCubit, AppState>(
                      buildWhen: (prev, current) {
                    return prev != current;
                  }, builder: (context, state) {
                        final cubit=context.read<AppCubit>();
                    return MaterialApp(
                      title: 'Store',
                      locale: Locale('en'),
                      supportedLocales: AppLocalizationsSetup.supportedLocales,
                      localeResolutionCallback:
                          AppLocalizationsSetup.localeResolutionCallback,
                      localizationsDelegates:
                          AppLocalizationsSetup.localizationsDelegates,
                      debugShowCheckedModeBanner: false,
                      theme: cubit.isDarkMode?appThemeDark():appThemeLight(),
                      onGenerateRoute: AppRoutes.onGenerateRoute,
                      initialRoute: AppRoutes.login,
                    );
                  })),
            );
          } else {
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
