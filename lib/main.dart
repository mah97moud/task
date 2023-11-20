import 'package:flutter/material.dart';
import 'package:task/core/app/di.dart';
import 'package:task/core/helpers/color_manager.dart';
import 'package:task/core/routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initAppModule();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Task',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorMananger.primary),
        useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: ColorMananger.fillColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      routerConfig: AppRouter().router,
    );
  }
}
