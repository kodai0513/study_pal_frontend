import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:openapi/openapi.dart';
import 'package:study_pal_frontend/core/mold/common/result.dart';
import 'package:study_pal_frontend/core/mold/model/common_view_state.dart';
import 'package:study_pal_frontend/model/view_state/article/create_article_view_state.dart';
import 'package:study_pal_frontend/repository/impl/article_repository_impl.dart';
import 'package:study_pal_frontend/repository/interface/article_repository.dart';

class CreateArticleViewModel extends StateNotifier<CreateArticleViewState> {
  CreateArticleViewModel(this._ref) : super(const CreateArticleViewState.loading()) {
    load();
  }

  final Ref _ref;

  late final ArticleRepository _articleRepository = _ref.read(articleRepositoryProvider);

  Future<void> load() async {
    state = CreateArticleViewState.success(
      CreateArticleViewSuccessState(
        articlePostFocus: FocusNode(),
        descriptionInput: const DescriptionInput.pure(),
        formStatus: FormzSubmissionStatus.initial,
      ),
    );

    final successState = (state as CommonViewSuccessState<CreateArticleViewSuccessState>).pageSuccessState;
    successState.articlePostFocus.requestFocus();
  }

  void onChangeDescription(String value) {

    state = CreateArticleViewState.success(
      (state as CommonViewSuccessState<CreateArticleViewSuccessState>).pageSuccessState.copyWith(
        descriptionInput: DescriptionInput.dirty(value)
      )
    );
  }

  Future<bool> post() async {
    final successState = (state as CommonViewSuccessState<CreateArticleViewSuccessState>).pageSuccessState;

    if (!successState.canPost) {
      return false;
    }

    final result = await _articleRepository.create(createArticleReq: CreateArticleReq(
      (d) => d..description = successState.descriptionInput.value,
    ));

    switch (result) {
      case Ok():
        return true;
      case Err(e: final exception):
        state = CreateArticleViewState.error(exception.toString());
        return false;
    }
    return false;
  }
}

final createArticleViewModelProvider =
    StateNotifierProvider.autoDispose<CreateArticleViewModel, CreateArticleViewState>(
  (ref) => CreateArticleViewModel(ref),
);
