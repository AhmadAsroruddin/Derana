import 'package:derana_multipart/domain/repositories/route_repo.dart';

class FirstTimeCheckerUsecase {
  final RouteRepo repo;

  FirstTimeCheckerUsecase({required this.repo});

  Future<bool> execute() async {
    return await repo.isFirstTime();
  }
}
