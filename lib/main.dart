import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      initialRoute: LoginScreen.routerName,
      routes: {
        HomeScreen.routerName: (context) => const HomeScreen(),
        LoginScreen.routerName: (context) => const LoginScreen(),
      },
    );
  }
}
