import 'package:flutter/material.dart';
import 'package:interview_work_universe_soft_it/pages/login_page.dart';
import 'package:interview_work_universe_soft_it/pages/massages_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MassagesPage(),
        //LoginPage(),
      ),
    );
  }
}
