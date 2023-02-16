import 'package:go_router/go_router.dart';
import 'package:interview_work_universe_soft_it/pages/login_page.dart';
import 'package:interview_work_universe_soft_it/pages/massages_page.dart';

class RouteManager {
  static final routerConfig = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        name: RouteNames.login,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: "/${RouteNames.massagesPage}",
        name: RouteNames.massagesPage,
        builder: (context, state) => MassagesPage(),
      ),
    ],
  );
}

abstract class RouteNames {
  static String login = '/';
  static String massagesPage = "massagesPage";
}
