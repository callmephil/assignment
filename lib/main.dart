import 'package:assignments/router/app_routes.dart';
import 'package:assignments/src/themes/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Airline Assignments',
      theme: AppTheme.theme,
      routerConfig: AppRoutes.routes,
    );
  }
}
