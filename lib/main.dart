import 'package:flutter/material.dart';
import 'package:pr_4_departure/controller/bottomNavigationController.dart';
import 'package:pr_4_departure/controller/chapter_controller.dart';
import 'package:pr_4_departure/controller/theme_controller.dart';
import 'package:pr_4_departure/helper/app_theme.dart';
import 'package:pr_4_departure/views/screens/home_screen.dart';
import 'package:pr_4_departure/views/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ChapterController(),
        ),
        ChangeNotifierProvider(
          create: (context) => BottomNavigationController(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: Provider.of<ThemeController>(context).isDark ? ThemeMode.dark : ThemeMode.light,
      initialRoute: 'splash_screen',
      routes: {
        '/': (context) => const HomeScreen(),
        'splash_screen': (context) => const SplashScreen(),
      },
    );
  }
}
