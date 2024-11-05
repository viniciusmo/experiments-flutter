import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class App extends StatelessWidget {
  final GlobalKey<NavigatorState>? navigatorKey;
  final Widget? home;
  final String title;
  final bool debugShowCheckedModeBanner;
  final RouteFactory? onGenerateRoute;

  const App({
    super.key,
    this.navigatorKey,
    this.home,
    this.title = "",
    this.debugShowCheckedModeBanner = false,
    this.onGenerateRoute,
  });

  @override
  Widget build(BuildContext context) {
    return ShadApp.material(
      onGenerateRoute: onGenerateRoute,
      title: title,
      navigatorKey: navigatorKey,
      theme: ShadThemeData(
          colorScheme: const ShadNeutralColorScheme.light(),
          brightness: Brightness.light),
      home: home,
    );
  }
}
