import 'package:derana_multipart/domain/repositories/route_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RouteRepoImpl extends RouteRepo {
  final SharedPreferences pref;

  RouteRepoImpl({required this.pref});

  @override
  Future<void> firstTimeDone() async {
    await pref.setBool('firstTime', false);
  }

  @override
  bool isFirstTime() {
    bool isFirstTime = pref.getBool('firstTime') ?? true;
    return isFirstTime;
  }
}
