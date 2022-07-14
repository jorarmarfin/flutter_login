import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routerName = 'home';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
      child: const Text('fondo'));
  }
}
