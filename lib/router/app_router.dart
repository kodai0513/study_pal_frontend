import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study_pal_frontend/page/article/article_create_page.dart';
import 'package:study_pal_frontend/page/tab_page.dart';
import 'package:study_pal_frontend/page/timeline/timeline_page.dart';
import 'package:study_pal_frontend/page/workbook/workbook_search_page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) => TabPage(child: child),
      routes: [
        GoRoute(
          path: '/',
          pageBuilder: (context, state) => const MaterialPage(child: Placeholder()),
        ),
        GoRoute(
          path: '/timeline',
          pageBuilder: (context, state) => const MaterialPage(child: TimelinePage()),
        ),
        GoRoute(
          path: '/workbook/search',
          pageBuilder: (context, state) => const MaterialPage(child: WorkbookSearchPage()),
        ),
        GoRoute(
          path: '/report',
          pageBuilder: (context, state) => const MaterialPage(child: Placeholder()),
        ),
        GoRoute(
          path: '/setting',
          pageBuilder: (context, state) => const MaterialPage(child: Placeholder()),
        ),
      ],
    ),
    GoRoute(
      path: '/article',
      builder: (context, state) => const Placeholder(),
      routes: [
        GoRoute(
          path: '/create',
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              fullscreenDialog: true,
              child: const ArticleCreatePage(),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                final curvedAnimation = CurvedAnimation(
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
          },
        ),
      ]
    )
  ],
);