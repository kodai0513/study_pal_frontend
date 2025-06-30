import 'package:go_router/go_router.dart';
import 'package:study_pal_frontend/page/main_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainPage(),
    ),
  ],
);
