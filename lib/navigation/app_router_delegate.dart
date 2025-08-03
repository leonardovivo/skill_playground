import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skill_playground/blocs/counter_bloc.dart';
import '../screens/home/home_screen.dart';
import '../screens/custom_painter/custom_painter_screen.dart';
import '../screens/bloc/bloc_screen.dart';
import '../screens/platform/platform_channel_screen.dart';
import '../screens/performance/performance_screen.dart';
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
        if (_currentScreen == 'bloc')
          MaterialPage(
            key: const ValueKey('BlocPage'),
            child: BlocProvider(
              create: (_) => CounterBloc(),
              child: const BlocScreen(),
            ),
          ),
        if (_currentScreen == 'platform')
          const MaterialPage(
            key: ValueKey('PlatformPage'),
            child: PlatformChannelScreen(),
          ),
        if (_currentScreen == 'performance')
          const MaterialPage(
            key: ValueKey('PerformancePage'),
            child: PerformanceScreen(),
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
