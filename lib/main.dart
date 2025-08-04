import 'package:flutter/material.dart';
import 'package:skill_playground/navigation/app_route_parser.dart';
import 'package:skill_playground/navigation/app_router_delegate.dart';
import 'di/locator.dart';

void main() {
  setupLocator();
  runApp(const SkillPlayground());
}

class SkillPlayground extends StatefulWidget {
  const SkillPlayground({super.key});

   @override
  State<SkillPlayground> createState() => _SkillPlaygroundState();
}

class _SkillPlaygroundState extends State<SkillPlayground> {
  final _routerDelegate = AppRouterDelegate();
  final _routeParser = AppRouteParser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _routerDelegate,
      routeInformationParser: _routeParser,
    );
  }
}