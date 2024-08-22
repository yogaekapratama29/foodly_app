import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:foodly_app/routes/app_routes.dart';
import 'package:foodly_app/themes/app_colors.dart';
import 'package:foodly_app/themes/app_fonts.dart';
import 'package:foodly_app/themes/app_themes_extensions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRoutes.setupRouter();
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    //Material App ditambah (dot)router
    return MaterialApp.router(
        title: 'Foodly App',
        debugShowCheckedModeBanner: !kReleaseMode,
        routerConfig: _appRouter,
    );
  }
}
