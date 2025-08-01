import 'package:flutter/material.dart';
import '../screens/home/home_screen.dart';
import '../screens/custom_painter/custom_painter_screen.dart';
import 'app_route_path.dart';

class AppRouterDelegate extends RouterDelegate<AppRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRoutePath> {
      
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  String? _currentScreen;

  AppRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  @override
  AppRoutePath get currentConfiguration {
    if (_currentScreen == 'custom_painter') {
      return AppRoutePath.customPainter();
    }
    return AppRoutePath.home();
  }

  void _handleTap(String screen) {
    _currentScreen = screen;
    notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        MaterialPage(
          key: const ValueKey('HomePage'),
          child: HomeScreen(onTap: _handleTap),
        ),
        if (_currentScreen == 'custom_painter')
          const MaterialPage(
            key: ValueKey('CustomPainterPage'),
            child: CustomPainterScreen(),
          ),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) return false;
        _currentScreen = null;
        notifyListeners();
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(AppRoutePath configuration) async {
    if (configuration.isCustomPainterPage) {
      _currentScreen = 'custom_painter';
    } else {
      _currentScreen = null;
    }
  }
}
