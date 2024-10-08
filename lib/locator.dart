import 'package:derana_multipart/data/services/route_service.dart';
import 'package:derana_multipart/domain/repositories/route_repo.dart';
import 'package:derana_multipart/domain/usecases/routes/first_time_checker_usecase.dart';
import 'package:derana_multipart/domain/usecases/routes/first_time_usecase.dart';
import 'package:derana_multipart/presentation/bloc/routes/route_cubit.dart';
import 'package:get_it/get_it.dart';

import 'presentation/routes/router_delegate.dart';

final locator = GetIt.instance;

Future<void> init() async {
  //USECASE
  locator.registerLazySingleton(() => FirstTimeUsecase(repo: locator()));
  locator.registerLazySingleton(() => FirstTimeCheckerUsecase(repo: locator()));

  //REPOSITORY
  locator.registerLazySingleton<RouteRepo>(() => RouteRepoImpl());

  //BLOC
  locator.registerLazySingleton(() => RouteCubit(
      firstTimeUsecase: locator(), firstTimeCheckerUsecase: locator()));

  //ROUTER
  locator.registerLazySingleton<MyRouterDelegate>(
      () => MyRouterDelegate(locator()));
}
