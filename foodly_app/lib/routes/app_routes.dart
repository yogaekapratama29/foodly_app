import 'package:flutter/foundation.dart';
import 'package:foodly_app/pages/splashPage.dart';
import 'package:foodly_app/routes/app_route_name.dart';
import 'package:foodly_app/routes/app_route_paths.dart';
import 'package:go_router/go_router.dart';

class AppRoutes{
  static List<GoRoute> routes = [
    GoRoute(path: AppRoutePaths.splashPage,
    name: AppRouteName.splashPage.name,
    builder: (context, state) => Splashpage(),
    )
  ];
  // variabel location terserah mau dinamain apa
  static GoRouter setupRouter([String? location]){
  return GoRouter(
    initialLocation: location ?? AppRoutePaths.splashPage,
    debugLogDiagnostics: !kReleaseMode,
   routes : routes,
  );
  }
}