import 'package:flutter/material.dart';
import 'package:my_flutter_template_mobile/core/constants.dart';
import 'package:my_flutter_template_mobile/core/theme.dart';
import 'package:my_flutter_template_mobile/ui/screens/home_screen.dart';
import 'package:my_flutter_template_mobile/ui/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: appTheme,
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) {
          final username =
              ModalRoute.of(context)!.settings.arguments as String? ?? '';
          return HomeScreen(username: username);
        },
      },
    );
  }
}
