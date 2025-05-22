import 'package:get_it/get_it.dart';
import 'package:store_app/core/app/app_cubit/app_cubit.dart';

final getIt=GetIt.instance;
void setup() {
getIt.registerFactory<AppCubit>(AppCubit.new);
}