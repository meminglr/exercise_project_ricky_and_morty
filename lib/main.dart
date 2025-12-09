import 'package:exercise_project_ricky_and_morty/app/locator.dart';
import 'package:exercise_project_ricky_and_morty/app/router.dart';
import 'package:exercise_project_ricky_and_morty/views/app_view.dart';
import 'package:flutter/material.dart';

import 'app_theme.dart';

void main() {
  setupLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,

      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      routerConfig: router,
    );
  }
}
