import 'package:flutter/material.dart';
import 'package:interview_work_universe_soft_it/pages/login_page.dart';
import 'package:interview_work_universe_soft_it/pages/massages_page.dart';
import 'package:interview_work_universe_soft_it/providers/auth_provider.dart';
import 'package:interview_work_universe_soft_it/router/route_manager.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: RouteManager.routerConfig,
      ),
    );
  }
}
