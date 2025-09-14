import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/about_page.dart';
import 'pages/process_page.dart';
import 'pages/persona_page.dart';
import 'pages/user_flow_page.dart'; // ✅ new import
import 'pages/ui_design_page.dart';
import 'pages/conclusion_page.dart';

class AppRoutes {
  static const String home = '/';
  static const String about = '/about';
  static const String process = '/process';
  static const String persona = '/persona';
  static const String userFlow = '/userflow';
  static const String uiDesign = '/uiDesign';
  static const String conclusion = '/conclusion';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case about:
        return MaterialPageRoute(builder: (_) => const AboutPage());
      case process:
        return MaterialPageRoute(builder: (_) => const ProcessPage());
      case persona:
        return MaterialPageRoute(builder: (_) => const PersonaPage());
      case userFlow: // ✅ added route
        return MaterialPageRoute(builder: (_) => const UserFlowPage());
      case uiDesign:
        return MaterialPageRoute(builder: (_) => const UIDesignPage());
      case conclusion:
        return MaterialPageRoute(builder: (_) => const ConclusionPage());
      default:
        return MaterialPageRoute(
          builder:
              (_) =>
                  const Scaffold(body: Center(child: Text("Page not found"))),
        );
    }
  }
}
