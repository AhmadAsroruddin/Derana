import 'package:derana_multipart/presentation/bloc/routes/route_cubit.dart';
import 'package:derana_multipart/presentation/pages/Authentication/auth_page.dart';
import 'package:derana_multipart/presentation/pages/onboarding_page.dart';
import 'package:flutter/material.dart';

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

  Future<void> _init() async {
    isFirstTime = routeCubit.isFirstTime();
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
      historyStack = _loggedOutStack;
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
  List<Page> get _loggedOutStack => [];
}
