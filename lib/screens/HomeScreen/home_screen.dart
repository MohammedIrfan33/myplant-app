import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const  String routeName = '/';

  static Route route() => MaterialPageRoute(settings: const RouteSettings(name:routeName),builder: (_)=> const HomeScreen());

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('home'),
      ),
    );
  }
}