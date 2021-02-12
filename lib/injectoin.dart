import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'app/bloc/app_bloc.dart';
import 'core/constent.dart';




final sl = GetIt.instance;

Future iniGetIt() async {
  sl.registerLazySingleton(() => ((Dio(BaseOptions(
      baseUrl: BaseUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        "charset": "utf-8",
        "Accept-Charset": "utf-8"
      },
      responseType: ResponseType.plain)))));

  // data




  /// AppBloc

  sl.registerFactory(() => AppBloc());




}
