import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../page/article/article_create_page.dart';
import '../page/home/home_page.dart';
import '../page/tab_page.dart';
import '../page/timeline/timeline_page.dart';
import '../page/workbook/create_workbook_page.dart';
import '../page/workbook/workbook_search_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    ShellRoute(
      builder: (BuildContext context, GoRouterState state, Widget child) =>
          TabPage(child: child),
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          pageBuilder: (BuildContext context, GoRouterState state) =>
              const MaterialPage<Widget>(child: HoemePage()),
        ),
        GoRoute(
          path: '/timeline',
          pageBuilder: (BuildContext context, GoRouterState state) =>
              const MaterialPage<Widget>(child: TimelinePage()),
        ),
        GoRoute(
            path: '/workbook/create',
            pageBuilder: (BuildContext context, GoRouterState state) =>
                createSlideUpTransitionPage(
                    key: state.pageKey, child: const CreateWorkbookPage())),
        GoRoute(
          path: '/workbook/search',
          pageBuilder: (BuildContext context, GoRouterState state) =>
              const MaterialPage<Widget>(child: WorkbookSearchPage()),
        ),
        GoRoute(
          path: '/report',
          pageBuilder: (BuildContext context, GoRouterState state) =>
              const MaterialPage<Widget>(child: Placeholder()),
        ),
        GoRoute(
          path: '/setting',
          pageBuilder: (BuildContext context, GoRouterState state) =>
              const MaterialPage<Widget>(child: Placeholder()),
        ),
      ],
    ),
    GoRoute(
      path: '/article/create',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          createSlideUpTransitionPage(
              key: state.pageKey, child: const ArticleCreatePage()),
    ),
  ],
);

CustomTransitionPage<T> createSlideUpTransitionPage<T>({
  required LocalKey key,
  required Widget child,
  bool fullscreenDialog = true,
}) {
  return CustomTransitionPage<T>(
    key: key,
    fullscreenDialog: fullscreenDialog,
    child: child,
    transitionsBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) {
      final CurvedAnimation curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: Curves.ease,
        reverseCurve: Curves.ease,
      );

      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, 1),
          end: Offset.zero,
        ).animate(curvedAnimation),
        child: child,
      );
    },
  );
}
