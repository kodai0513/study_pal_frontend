import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../component/atom/sp_elevated_button.dart';
import '../../component/organisms/article/article_post_text_area.dart';
import '../../model/view_state/article/create_article_view_state.dart';
import '../../view_model/article/create_article_view_model.dart';
import '../common/state_driven_view.dart';
import '../timeline/timeline_view.dart';

class CreateArticleView extends ConsumerWidget {
  const CreateArticleView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final CreateArticleViewState state = ref.watch(createArticleViewModelProvider);
    final CreateArticleViewModel viewModel = ref.watch(createArticleViewModelProvider.notifier);

    return StateDrivenView<CreateArticleViewSuccessState>(
      state: state,
      successBuilder: (CreateArticleViewSuccessState state) {
        return Form(
          child: Column(
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: ArticlePostTextArea(
                    focusNode: state.articlePostFocus,
                    text: 'つぶやきましょう',
                    maxLines: 20,
                    onChanged: viewModel.onChangeDescription,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                  right: 16,
                  left: 16,
                  top: 8,
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: SpElevatedButton(
                    enabled: state.canPost,
                    label: '投稿',
                    onPressed: () async {
                      final GoRouter goRouter = GoRouter.of(context);
                      final bool result = await viewModel.post();
                      if (result) {
                        ref.read(createSuccessReloadedProvider.notifier).state =
                            false;
                        goRouter.go(Uri(
                          path: '/timeline',
                          queryParameters: <String, dynamic>{'reload': 'true'},
                        ).toString());
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
