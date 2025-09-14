import 'package:flutter/material.dart';
import 'app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tourmate App',
      theme: ThemeData(fontFamily: 'Arial', useMaterial3: true),
      initialRoute: AppRoutes.home,
      onGenerateRoute: AppRoutes.generateRoute, // ✅ FIXED
    );
  }
}
