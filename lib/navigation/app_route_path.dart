class AppRoutePath {
  final String? screen;

  AppRoutePath.home() : screen = null;
  AppRoutePath.customPainter() : screen = 'custom_painter';

  bool get isHomePage => screen == null;
  bool get isCustomPainterPage => screen == 'custom_painter';
}
