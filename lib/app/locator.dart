import 'package:exercise_project_ricky_and_morty/services/api_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => ApiService());
}
