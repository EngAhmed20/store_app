import 'package:get_it/get_it.dart';
import 'package:store_app/core/app/app_cubit/app_cubit.dart';
import 'package:store_app/core/service/graphql/api_service.dart';
import 'package:store_app/core/service/graphql/dio_factory.dart';

final getIt=GetIt.instance;
void setup() {
  final dio = DioFactory.getDio();
getIt.registerFactory<AppCubit>(AppCubit.new);
getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

}