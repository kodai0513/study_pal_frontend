import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/mold/model/common_view_state.dart';

part 'create_article_view_state.freezed.dart';

enum DescriptionValidationError { empty, tooLong }

class DescriptionInput extends FormzInput<String, DescriptionValidationError> {
  const DescriptionInput.pure() : super.pure('');
  const DescriptionInput.dirty([super.value = '']) : super.dirty();

  static const int maxLength = 400;

  @override
  DescriptionValidationError? validator(String value) {
    final String trimmed = value.trim();
    if (trimmed.isEmpty) {
      return DescriptionValidationError.empty;
    } else if (trimmed.length > maxLength) {
      return DescriptionValidationError.tooLong;
    }
    return null;
  }
}

// class CreateArticleViewSuccessState {
//   CreateArticleViewSuccessState({
//     required this.descriptionInput,
//     required this.articlePostFocus,
//     required this.formStatus,
//   });

//   final DescriptionInput descriptionInput;
//   final FocusNode articlePostFocus;
//   final FormzSubmissionStatus formStatus;

//   CreateArticleViewSuccessState copyWith({
//     DescriptionInput? descriptionInput,
//     FocusNode? articlePostFocus,
//     FormzSubmissionStatus? formStatus,
//   }) {
//     return CreateArticleViewSuccessState(
//       descriptionInput: descriptionInput ?? this.descriptionInput,
//       articlePostFocus: articlePostFocus ?? this.articlePostFocus,
//       formStatus: formStatus ?? this.formStatus,
//       );
//   }

//   bool get canPost => Formz.validate([descriptionInput]);
// }

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
  bool get canPost => Formz.validate(
      <FormzInput<String, DescriptionValidationError>>[descriptionInput]);
}

typedef CreateArticleViewState = CommonViewState<CreateArticleViewSuccessState>;
