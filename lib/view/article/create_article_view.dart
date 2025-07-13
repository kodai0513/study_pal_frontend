import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:study_pal_frontend/component/atom/sp_elevated_button.dart';
import 'package:study_pal_frontend/component/organisms/article/article_post_text_area.dart';
import 'package:study_pal_frontend/model/view_state/article/create_article_view_state.dart';
import 'package:study_pal_frontend/view/common/state_driven_view.dart';
import 'package:study_pal_frontend/view/timeline/timeline_view.dart';
import 'package:study_pal_frontend/view_model/article/create_article_view_model.dart';

class CreateArticleView extends ConsumerWidget {
  const CreateArticleView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(createArticleViewModelProvider);
    final viewModel = ref.watch(createArticleViewModelProvider.notifier);

    return StateDrivenView<CreateArticleViewSuccessState>(
      state: state,
      successBuilder: (state) {
        return Form(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: ArticlePostTextArea(
                    focusNode: state.articlePostFocus,
                    text: "つぶやきましょう",
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
                      final goRouter = GoRouter.of(context);
                      bool result = await viewModel.post();
                      if(result) {
                        ref.read(createSuccessReloadedProvider.notifier).state = false;
                        goRouter.go(
                          Uri(
                            path: '/timeline',
                            queryParameters:  {'reload': 'true'},
                            ).toString()
                        );
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
