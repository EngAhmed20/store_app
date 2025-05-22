import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/core/service/shared_pref/pref_keys.dart';
import 'package:store_app/core/service/shared_pref/shared_pref.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());
  bool isDarkMode=SharedPref().getBoolean(PrefKeys.themeMode)?? false;
  Future<void> changeThemeMode() async {
    if(isDarkMode==false){
      isDarkMode =true;
      await SharedPref().setBoolean(PrefKeys.themeMode, isDarkMode);
      emit(AppState.themeChangeMode(isDarkMode: isDarkMode));
    }else{
      isDarkMode =false;
      await SharedPref().setBoolean(PrefKeys.themeMode, isDarkMode);
      emit(AppState.themeChangeMode(isDarkMode: isDarkMode));
    }
  }
}
