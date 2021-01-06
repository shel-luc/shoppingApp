import 'package:flutter/material.dart';

class CustumRoute<T> extends MaterialPageRoute<T> {
  CustumRoute({WidgetBuilder builder, RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    if (settings.isInitialRoute) {
      return child;
    }
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
class CustumPageTransiionBuilder extends PageTransitionsBuilder{
  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    if (route.settings.isInitialRoute) {
      return child;
    }
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}