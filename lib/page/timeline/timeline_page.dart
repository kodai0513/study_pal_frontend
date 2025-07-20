import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../component/atom/sp_floating_action_button.dart';
import '../../view/timeline/timeline_view.dart';

class TimelinePage extends ConsumerWidget {
  const TimelinePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('タイムライン'),
      ),
      body: TimelineView(key: key),
      floatingActionButton: SpFloatingActionButton(
        icon: Icons.add,
        onPressed: () {
          context.push('/article/create');
        },
      ),
    );
  }
}
