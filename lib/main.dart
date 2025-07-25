import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'router/app_router.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const ColorScheme defaultColors = ColorScheme.light(
      primary: Colors.blue,
      onPrimary: Colors.blueGrey,
      primaryContainer: Colors.blue,
      onPrimaryContainer: Colors.blueGrey,
      secondary: Colors.cyanAccent,
      onSecondary: Colors.cyan,
      error: Colors.redAccent,
    );
    return MaterialApp.router(
      title: 'StudyPalApp',
      themeMode: ThemeMode.light,
      routerConfig: router,
      theme: ThemeData(
        colorScheme: defaultColors,
        useMaterial3: true,
        fontFamily: 'Lato',
      ),
    );
  }
}
