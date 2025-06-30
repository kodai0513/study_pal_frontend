import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_pal_frontend/component/atom/app_floating_action_button.dart';
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
          child: AppFloatingActionButton(
            icon: Icons.add,
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('確認'),
                    content: const Text('追加しますか？'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('キャンセル'),
                      ),
                      TextButton(
                        onPressed: () {
                          // 追加処理
                          Navigator.of(context).pop();
                        },
                        child: const Text('追加'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ]
    );
  }
}
