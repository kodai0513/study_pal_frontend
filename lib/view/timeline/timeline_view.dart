import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:study_pal_frontend/component/atom/sp_icon.dart';
import 'package:study_pal_frontend/component/organisms/article/article_list_title.dart';
import 'package:study_pal_frontend/model/view_state/timeline/timeline_view_state.dart';
import 'package:study_pal_frontend/view/common/state_driven_view.dart';
import 'package:study_pal_frontend/view_model/timeline/timeline_view_model.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';

final createSuccessReloadedProvider = StateProvider<bool>((ref) => false);

class TimelineView extends ConsumerWidget {
  const TimelineView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(timelineViewModelProvider);
    final viewModel = ref.watch(timelineViewModelProvider.notifier);

    final uri = GoRouterState.of(context).uri;
    final shouldReload = uri.queryParameters['reload'] == 'true';

    final hasReloaded = ref.watch(createSuccessReloadedProvider);

    if (shouldReload && !hasReloaded) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        viewModel.load();
        ref.read(createSuccessReloadedProvider.notifier).state = true;
      });
    }

    return StateDrivenView<TimelineViewSuccessState>(
      state: state,
      successBuilder: (state) {
        if (state.articleContents.isEmpty) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('まだ何も投稿されていません', style: TextStyle(fontSize: 18)), 
              ],
            ),
          );
        }
        return RefreshIndicator(
          onRefresh: viewModel.load,
          color: Theme.of(context).colorScheme.primary,
          backgroundColor: Colors.white,
          strokeWidth: 2.0,
          displacement: 40.0,
          child: InfiniteList(
            itemCount: state.articleContents.length,
            isLoading: state.isNextLoading,
            onFetchData: viewModel.nextDataLoad,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              final article = state.articleContents[index];
              return ArticleListTitle(
                key: ValueKey(article.id),
                icon: const SpIcon(
                  defaultIcon: Icons.person,
                  size: 40,
                ),
                description: article.description,
                nickName: article.userNickname,
                userName: article.userName,
              );
            },
          ),
        );
      },
    );
  }
}