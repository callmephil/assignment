import 'package:assignments/src/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  const AppRoutes._();

  static const String home = '/';

  static GoRouter routes = GoRouter(
    routes: [
      GoRoute(
        path: home,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
