import 'package:get_it/get_it.dart';
import 'package:sample_project/data/datasource/UserDataSource.dart';
import 'package:sample_project/domain/repository/UserRepository.dart';
import 'package:sample_project/domain/usecase/user/GetUserUseCase.dart';
import 'package:sample_project/presentation/viewmodel/UserViewModel.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerLazySingleton(() => UserDataSource());
  getIt.registerLazySingleton(() => UserRepository(getIt<UserDataSource>()));
  getIt.registerLazySingleton(() => GetUserUseCase(getIt<UserRepository>()));
  getIt.registerFactory(() => UserViewModel(getIt<GetUserUseCase>()));
}