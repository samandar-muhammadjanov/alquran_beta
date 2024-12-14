import 'package:alquran_beta/core/api/dio_settings.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.I;

Future<void> setupLocator({String? lang}) async {
  serviceLocator.registerLazySingleton(() => DioSettings()..setBaseOptions());
}

Future resetLocator({String? lang}) async {
  await serviceLocator.reset();
  await setupLocator(lang: lang);
}
