import 'package:derana_multipart/domain/repositories/route_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RouteRepoImpl extends RouteRepo {
  @override
  Future<void> firstTimeDone() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setBool('firstTime', false);
  }

  @override
  Future<bool> isFirstTime() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();

    bool isFirstTime = pref.getBool('firstTime') ?? true;
    return isFirstTime;
  }
}
