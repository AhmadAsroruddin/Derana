import 'package:derana_multipart/domain/repositories/route_repo.dart';

class FirstTimeCheckerUsecase {
  final RouteRepo repo;

  FirstTimeCheckerUsecase({required this.repo});

  bool execute() {
    return repo.isFirstTime();
  }
}
