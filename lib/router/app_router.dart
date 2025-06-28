import 'package:flutter/material.dart';

class AppRouter {
  static const String todoDetail = '/todo-detail';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('Route not found: ${settings.name}'),
            ),
          ),
        );
    }
  }

  static Future<void> navigateToTodoDetail(BuildContext context, String todoId) async {
    await Navigator.pushNamed(
      context,
      todoDetail,
      arguments: todoId,
    );
  }
}