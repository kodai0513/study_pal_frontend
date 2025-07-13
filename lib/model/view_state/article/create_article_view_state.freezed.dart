// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_article_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateArticleViewSuccessState {
  DescriptionInput get descriptionInput;
  FocusNode get articlePostFocus;
  FormzSubmissionStatus get formStatus;

  /// Create a copy of CreateArticleViewSuccessState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateArticleViewSuccessStateCopyWith<CreateArticleViewSuccessState>
      get copyWith => _$CreateArticleViewSuccessStateCopyWithImpl<
              CreateArticleViewSuccessState>(
          this as CreateArticleViewSuccessState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateArticleViewSuccessState &&
            (identical(other.descriptionInput, descriptionInput) ||
                other.descriptionInput == descriptionInput) &&
            (identical(other.articlePostFocus, articlePostFocus) ||
                other.articlePostFocus == articlePostFocus) &&
            (identical(other.formStatus, formStatus) ||
                other.formStatus == formStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, descriptionInput, articlePostFocus, formStatus);

  @override
  String toString() {
    return 'CreateArticleViewSuccessState(descriptionInput: $descriptionInput, articlePostFocus: $articlePostFocus, formStatus: $formStatus)';
  }
}

/// @nodoc
abstract mixin class $CreateArticleViewSuccessStateCopyWith<$Res> {
  factory $CreateArticleViewSuccessStateCopyWith(
          CreateArticleViewSuccessState value,
          $Res Function(CreateArticleViewSuccessState) _then) =
      _$CreateArticleViewSuccessStateCopyWithImpl;
  @useResult
  $Res call(
      {DescriptionInput descriptionInput,
      FocusNode articlePostFocus,
      FormzSubmissionStatus formStatus});
}

/// @nodoc
class _$CreateArticleViewSuccessStateCopyWithImpl<$Res>
    implements $CreateArticleViewSuccessStateCopyWith<$Res> {
  _$CreateArticleViewSuccessStateCopyWithImpl(this._self, this._then);

  final CreateArticleViewSuccessState _self;
  final $Res Function(CreateArticleViewSuccessState) _then;

  /// Create a copy of CreateArticleViewSuccessState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? descriptionInput = null,
    Object? articlePostFocus = null,
    Object? formStatus = null,
  }) {
    return _then(_self.copyWith(
      descriptionInput: null == descriptionInput
          ? _self.descriptionInput
          : descriptionInput // ignore: cast_nullable_to_non_nullable
              as DescriptionInput,
      articlePostFocus: null == articlePostFocus
          ? _self.articlePostFocus
          : articlePostFocus // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      formStatus: null == formStatus
          ? _self.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ));
  }
}

/// @nodoc

class _CreateArticleViewSuccessState implements CreateArticleViewSuccessState {
  const _CreateArticleViewSuccessState(
      {required this.descriptionInput,
      required this.articlePostFocus,
      required this.formStatus});

  @override
  final DescriptionInput descriptionInput;
  @override
  final FocusNode articlePostFocus;
  @override
  final FormzSubmissionStatus formStatus;

  /// Create a copy of CreateArticleViewSuccessState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateArticleViewSuccessStateCopyWith<_CreateArticleViewSuccessState>
      get copyWith => __$CreateArticleViewSuccessStateCopyWithImpl<
          _CreateArticleViewSuccessState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateArticleViewSuccessState &&
            (identical(other.descriptionInput, descriptionInput) ||
                other.descriptionInput == descriptionInput) &&
            (identical(other.articlePostFocus, articlePostFocus) ||
                other.articlePostFocus == articlePostFocus) &&
            (identical(other.formStatus, formStatus) ||
                other.formStatus == formStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, descriptionInput, articlePostFocus, formStatus);

  @override
  String toString() {
    return 'CreateArticleViewSuccessState(descriptionInput: $descriptionInput, articlePostFocus: $articlePostFocus, formStatus: $formStatus)';
  }
}

/// @nodoc
abstract mixin class _$CreateArticleViewSuccessStateCopyWith<$Res>
    implements $CreateArticleViewSuccessStateCopyWith<$Res> {
  factory _$CreateArticleViewSuccessStateCopyWith(
          _CreateArticleViewSuccessState value,
          $Res Function(_CreateArticleViewSuccessState) _then) =
      __$CreateArticleViewSuccessStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {DescriptionInput descriptionInput,
      FocusNode articlePostFocus,
      FormzSubmissionStatus formStatus});
}

/// @nodoc
class __$CreateArticleViewSuccessStateCopyWithImpl<$Res>
    implements _$CreateArticleViewSuccessStateCopyWith<$Res> {
  __$CreateArticleViewSuccessStateCopyWithImpl(this._self, this._then);

  final _CreateArticleViewSuccessState _self;
  final $Res Function(_CreateArticleViewSuccessState) _then;

  /// Create a copy of CreateArticleViewSuccessState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? descriptionInput = null,
    Object? articlePostFocus = null,
    Object? formStatus = null,
  }) {
    return _then(_CreateArticleViewSuccessState(
      descriptionInput: null == descriptionInput
          ? _self.descriptionInput
          : descriptionInput // ignore: cast_nullable_to_non_nullable
              as DescriptionInput,
      articlePostFocus: null == articlePostFocus
          ? _self.articlePostFocus
          : articlePostFocus // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      formStatus: null == formStatus
          ? _self.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ));
  }
}

// dart format on
