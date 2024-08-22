import 'package:derana_multipart/presentation/bloc/routes/route_cubit.dart';
import 'package:derana_multipart/presentation/pages/Authentication/auth_page.dart';
import 'package:derana_multipart/presentation/pages/beranda/beranda_page.dart';
import 'package:derana_multipart/presentation/pages/beranda/tab_page.dart';
import 'package:derana_multipart/presentation/pages/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyRouterDelegate extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final GlobalKey<NavigatorState> _navigatorKey;

  MyRouterDelegate(this.routeCubit)
      : _navigatorKey = GlobalKey<NavigatorState>() {
    _init();
  }

  bool? isFirstTime;
  final RouteCubit routeCubit;
  List<Page> historyStack = [];
  bool? isLogin = false;

  Future<void> _init() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final data = prefs.getBool('login');
    isFirstTime = routeCubit.isFirstTime();
    isLogin = data;
    notifyListeners();
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => _navigatorKey;

  @override
  Future<void> setNewRoutePath(configuration) async {}

  @override
  Widget build(BuildContext context) {
    if (isFirstTime == null) {
      return const CircularProgressIndicator();
    } else if (isFirstTime == true) {
      historyStack = _splashStack;
    } else {
      historyStack = _loggedInStack;
    }

    return Navigator(
      key: navigatorKey,
      pages: historyStack,
      onGenerateRoute: (settings) {
        if (settings.name == AuthPage.routeName) {
          return MaterialPageRoute(
            builder: (context) => const AuthPage(),
            settings: settings,
          );
        }
        if (settings.name == BerandaPage.routeName) {
          return MaterialPageRoute(
            builder: (context) => const BerandaPage(),
            settings: settings,
          );
        }
        if (settings.name == TabPage.routeName) {
          return MaterialPageRoute(
            builder: (context) => const TabPage(),
            settings: settings,
          );
        }

        return null;
      },
      // ignore: deprecated_member_use
      onPopPage: (route, result) {
        final didPop = route.didPop(result);

        if (!didPop) {
          return false;
        }
        notifyListeners();
        return true;
      },
    );
  }

  List<Page> get _splashStack => [const MaterialPage(child: OnboardingPage())];
  List<Page> get _loggedOutStack => [const MaterialPage(child: TabPage())];
  List<Page> get _loggedInStack => [const MaterialPage(child: AuthPage())];
}
