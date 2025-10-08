import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/mold/model/common_view_state.dart';
import '../common/form/input_text.dart';

part 'create_article_view_state.freezed.dart';

enum DescriptionValidationError { empty, tooLong }

class DescriptionInput extends InputText {
  const DescriptionInput.pure()
      : super.pure(
          value: '',
          maxLength: 400,
          fieldName: '説明',
          isEmpty: true,
        );

  const DescriptionInput.dirty([String value = ''])
      : super.dirty(
          value: value,
          maxLength: 400,
          fieldName: '説明',
          isEmpty: true,
        );
}

@freezed
abstract class CreateArticleViewSuccessState
    with _$CreateArticleViewSuccessState {
  const factory CreateArticleViewSuccessState(
          {required DescriptionInput descriptionInput,
          required FocusNode articlePostFocus,
          required FormzSubmissionStatus formStatus}) =
      _CreateArticleViewSuccessState;
}

extension CreateArticleViewSuccessStateExtension
    on CreateArticleViewSuccessState {
  bool get canPost => Formz.validate(<InputText>[descriptionInput]);
}

typedef CreateArticleViewState = CommonViewState<CreateArticleViewSuccessState>;
