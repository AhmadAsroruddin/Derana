import 'package:derana_multipart/domain/repositories/route_repo.dart';

class FirstTimeUsecase {
  final RouteRepo repo;

  FirstTimeUsecase({required this.repo});

  Future<void> execute() async {
    repo.firstTimeDone();
  }
}
