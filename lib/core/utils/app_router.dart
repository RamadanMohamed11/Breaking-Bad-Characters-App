import 'package:breaking_bad_chars/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String home = '/';

  static final routes = GoRouter(
    routes: [
      GoRoute(path: home, builder: (context, state) => const HomeView()),
    ],
  );
}
