import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/core/service/shared_pref/pref_keys.dart';
import 'package:store_app/core/service/shared_pref/shared_pref.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());
  bool isDarkMode=SharedPref().getBoolean(PrefKeys.themeMode)?? false;
  String currentLangCode=SharedPref().getString(PrefKeys.language)??PrefKeys.en;
  ///theme
  Future<void> changeThemeMode() async {
   isDarkMode=!isDarkMode;
    await SharedPref().setBoolean(PrefKeys.themeMode, isDarkMode);
    emit(AppState.themeChangeMode(isDarkMode: isDarkMode));
  }
  /// language
  void getSavedLanguage(){
    final result=SharedPref().containPreference(PrefKeys.language)?
    SharedPref().getString(PrefKeys.language):PrefKeys.en;
    currentLangCode=result!;
    emit(AppState.languageChangeMode(locale: Locale(currentLangCode)));
  }
  Future<void>toggleLanguage()async{
    currentLangCode=currentLangCode==PrefKeys.en?PrefKeys.ar:PrefKeys.en;
    await SharedPref().setString(PrefKeys.language, currentLangCode);
    emit(AppState.languageChangeMode(locale: Locale(currentLangCode)));
  }
}
/*
  Future<void> toggleLanguage() async {
    currentLangCode = currentLangCode == 'en' ? 'ar' : 'en';
    await SharedPref().setString(PrefKeys.language, currentLangCode);
    emit(AppState.languageChangeMode(locale: Locale(currentLangCode)));
  }

 */