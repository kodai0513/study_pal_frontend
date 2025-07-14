import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:openapi/openapi.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';

import '../../component/atom/sp_icon.dart';
import '../../component/organisms/article/article_list_title.dart';
import '../../model/view_state/timeline/timeline_view_state.dart';
import '../../view_model/timeline/timeline_view_model.dart';
import '../common/state_driven_view.dart';

final StateProvider<bool> createSuccessReloadedProvider =
    StateProvider<bool>((Ref<bool> ref) => false);

class TimelineView extends ConsumerWidget {
  const TimelineView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TimelineViewState state = ref.watch(timelineViewModelProvider);
    final TimelineViewModel viewModel =
        ref.watch(timelineViewModelProvider.notifier);

    final Uri uri = GoRouterState.of(context).uri;
    final bool shouldReload = uri.queryParameters['reload'] == 'true';

    final bool hasReloaded = ref.watch(createSuccessReloadedProvider);

    if (shouldReload && !hasReloaded) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        viewModel.load();
        ref.read(createSuccessReloadedProvider.notifier).state = true;
      });
    }

    return StateDrivenView<TimelineViewSuccessState>(
      state: state,
      successBuilder: (TimelineViewSuccessState state) {
        if (state.articleContents.isEmpty) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
          child: InfiniteList(
            itemCount: state.articleContents.length,
            isLoading: state.isNextLoading,
            onFetchData: viewModel.nextDataLoad,
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemBuilder: (BuildContext context, int index) {
              final ArticleContent article = state.articleContents[index];
              return ArticleListTitle(
                key: ValueKey<String>(article.id),
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
