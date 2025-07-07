import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:study_pal_frontend/component/atom/sp_floating_action_button.dart';
import 'package:study_pal_frontend/view/timeline/timeline_view.dart';

class TimelinePage extends ConsumerWidget {
  const TimelinePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        TimelineView(key: key),
        Positioned(
          right: 16,
          bottom: 16,
          child: SpFloatingActionButton(
            icon: Icons.add,
            onPressed: () {
              context.push('/article/create');
            },
          ),
        ),
      ]
    );
  }
}
