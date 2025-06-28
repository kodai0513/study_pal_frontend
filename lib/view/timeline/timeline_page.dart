import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_pal_frontend/view_model/timeline/timeline_view_model.dart';
import 'package:study_pal_frontend/component/loading_widget.dart';
import 'package:openapi/openapi.dart';

class TimelineView extends ConsumerWidget {
  const TimelineView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewState = ref.watch(timelineViewModelProvider);
    //final viewModel = ref.read(timelineViewModelProvider.notifier);

    if (viewState.isLoading) {
      return const LoadingWidget(message: '読み込み中...');
    }

    final articles = viewState.timeline?.data ?? BuiltList<ArticleView>();

    return viewState.noPosts
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
            itemCount: articles.length,
            itemBuilder: (context, index) {
              final article = articles[index];
              return ListTile(
                title: Text(article.description),
                subtitle: Text('@${article.userName} (${article.userNickname ?? "No nickname"})'),
              );
            },
          );
  }
}