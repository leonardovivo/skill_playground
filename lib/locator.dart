import 'package:get_it/get_it.dart';
import 'services/logger_service.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<LoggerService>(() => LoggerService());
}
