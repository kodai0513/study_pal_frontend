// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PageState<T> {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PageState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PageState<$T>()';
  }
}

/// @nodoc
class $PageStateCopyWith<T, $Res> {
  $PageStateCopyWith(PageState<T> _, $Res Function(PageState<T>) __);
}

/// @nodoc

class PageLoadingState<T> implements PageState<T> {
  const PageLoadingState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PageLoadingState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PageState<$T>.loading()';
  }
}

/// @nodoc

class PageSuccessState<T> implements PageState<T> {
  const PageSuccessState(this.pageSuccessState);

  final T pageSuccessState;

  /// Create a copy of PageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageSuccessStateCopyWith<T, PageSuccessState<T>> get copyWith =>
      _$PageSuccessStateCopyWithImpl<T, PageSuccessState<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageSuccessState<T> &&
            const DeepCollectionEquality()
                .equals(other.pageSuccessState, pageSuccessState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(pageSuccessState));

  @override
  String toString() {
    return 'PageState<$T>.success(pageSuccessState: $pageSuccessState)';
  }
}

/// @nodoc
abstract mixin class $PageSuccessStateCopyWith<T, $Res>
    implements $PageStateCopyWith<T, $Res> {
  factory $PageSuccessStateCopyWith(
          PageSuccessState<T> value, $Res Function(PageSuccessState<T>) _then) =
      _$PageSuccessStateCopyWithImpl;
  @useResult
  $Res call({T pageSuccessState});
}

/// @nodoc
class _$PageSuccessStateCopyWithImpl<T, $Res>
    implements $PageSuccessStateCopyWith<T, $Res> {
  _$PageSuccessStateCopyWithImpl(this._self, this._then);

  final PageSuccessState<T> _self;
  final $Res Function(PageSuccessState<T>) _then;

  /// Create a copy of PageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pageSuccessState = freezed,
  }) {
    return _then(PageSuccessState<T>(
      freezed == pageSuccessState
          ? _self.pageSuccessState
          : pageSuccessState // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class PageErrorState<T> implements PageState<T> {
  const PageErrorState(this.message);

  final String message;

  /// Create a copy of PageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageErrorStateCopyWith<T, PageErrorState<T>> get copyWith =>
      _$PageErrorStateCopyWithImpl<T, PageErrorState<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageErrorState<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'PageState<$T>.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $PageErrorStateCopyWith<T, $Res>
    implements $PageStateCopyWith<T, $Res> {
  factory $PageErrorStateCopyWith(
          PageErrorState<T> value, $Res Function(PageErrorState<T>) _then) =
      _$PageErrorStateCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$PageErrorStateCopyWithImpl<T, $Res>
    implements $PageErrorStateCopyWith<T, $Res> {
  _$PageErrorStateCopyWithImpl(this._self, this._then);

  final PageErrorState<T> _self;
  final $Res Function(PageErrorState<T>) _then;

  /// Create a copy of PageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(PageErrorState<T>(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
