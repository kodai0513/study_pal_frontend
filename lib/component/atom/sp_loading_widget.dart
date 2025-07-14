import 'package:flutter/material.dart';

class SpLoadingWidget extends StatelessWidget {
  const SpLoadingWidget({super.key, this.message});
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const CircularProgressIndicator(),
          if (message != null) ...<Widget>[
            const SizedBox(height: 16),
            Text(message!),
          ],
        ],
      ),
    );
  }
}
