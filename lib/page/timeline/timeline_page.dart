import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_pal_frontend/view_model/timeline/timeline_view_model.dart';
import 'package:study_pal_frontend/component/loading_widget.dart';
import 'package:study_pal_frontend/core/mold/model/page_state.dart';

class TimelineView extends ConsumerWidget {
  const TimelineView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(timelineViewModelProvider);

    return switch (state) {
      PageLoadingState() => const LoadingWidget(message: '読み込み中...'),
      PageSuccessState(:final pageSuccessState) => 
        pageSuccessState.timeline.articleViews.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.done_all, size: 64, color: Colors.grey),
                  SizedBox(height: 16),
                  Text('まだ何も投稿されていません', style: TextStyle(fontSize: 18)),
                ],
              ),
            )
          : ListView.builder(
              itemCount: pageSuccessState.timeline.articleViews.length,
              itemBuilder: (context, index) {
                final article = pageSuccessState.timeline.articleViews[index];
                return ListTile(
                  title: Text(article.description),
                  subtitle: Text('@${article.userName} (${article.userNickname ?? "No nickname"})'),
                );
              },
            ),
      PageErrorState(:final message) => Center(child: Text('エラー: $message')),
      _ => const SizedBox.shrink(),
    };
  }
}
