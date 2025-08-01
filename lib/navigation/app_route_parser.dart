import 'package:flutter/material.dart';
import 'app_route_path.dart';

class AppRouteParser extends RouteInformationParser<AppRoutePath> {
  @override
  Future<AppRoutePath> parseRouteInformation(
    RouteInformation routeInformation,
  ) async {
    final uri = routeInformation.uri;

    if (uri.pathSegments.isEmpty) return AppRoutePath.home();

    if (uri.pathSegments.first == 'custom_painter') {
      return AppRoutePath.customPainter();
    }

    return AppRoutePath.home();
  }

  @override
  RouteInformation restoreRouteInformation(AppRoutePath configuration) {
    if (configuration.isCustomPainterPage) {
      return RouteInformation(uri: Uri.parse('/custom_painter'));
    }
    return RouteInformation(uri: Uri.parse('/'));
  }
}
