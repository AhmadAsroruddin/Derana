import 'package:flutter/material.dart';

class MyRouterDelegate extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final GlobalKey<NavigatorState> _navigatorKey;

  MyRouterDelegate() : _navigatorKey = GlobalKey<NavigatorState>() {}
  bool? isFirstTime;

  Future<void> _init() async {
    notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  @override
  // TODO: implement navigatorKey
  GlobalKey<NavigatorState>? get navigatorKey => throw UnimplementedError();

  @override
  Future<void> setNewRoutePath(configuration) {
    // TODO: implement setNewRoutePath
    throw UnimplementedError();
  }
}
