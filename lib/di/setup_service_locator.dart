import 'package:get_it/get_it.dart';

import '../presentation/components/login/repository/auth_repository.dart';
import '../presentation/components/login/services/auth_repository_impl.dart';

final it = GetIt.instance;

setupServiceLocator() {
  it.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());
}
