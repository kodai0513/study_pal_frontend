// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommonViewState<T> {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CommonViewState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommonViewState<$T>()';
  }
}

/// @nodoc
class $CommonViewStateCopyWith<T, $Res> {
  $CommonViewStateCopyWith(
      CommonViewState<T> _, $Res Function(CommonViewState<T>) __);
}

/// @nodoc

class CommonViewLoadingState<T> implements CommonViewState<T> {
  const CommonViewLoadingState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CommonViewLoadingState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommonViewState<$T>.loading()';
  }
}

/// @nodoc

class CommonViewSuccessState<T> implements CommonViewState<T> {
  const CommonViewSuccessState(this.pageSuccessState);

  final T pageSuccessState;

  /// Create a copy of CommonViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CommonViewSuccessStateCopyWith<T, CommonViewSuccessState<T>> get copyWith =>
      _$CommonViewSuccessStateCopyWithImpl<T, CommonViewSuccessState<T>>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CommonViewSuccessState<T> &&
            const DeepCollectionEquality()
                .equals(other.pageSuccessState, pageSuccessState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(pageSuccessState));

  @override
  String toString() {
    return 'CommonViewState<$T>.success(pageSuccessState: $pageSuccessState)';
  }
}

/// @nodoc
abstract mixin class $CommonViewSuccessStateCopyWith<T, $Res>
    implements $CommonViewStateCopyWith<T, $Res> {
  factory $CommonViewSuccessStateCopyWith(CommonViewSuccessState<T> value,
          $Res Function(CommonViewSuccessState<T>) _then) =
      _$CommonViewSuccessStateCopyWithImpl;
  @useResult
  $Res call({T pageSuccessState});
}

/// @nodoc
class _$CommonViewSuccessStateCopyWithImpl<T, $Res>
    implements $CommonViewSuccessStateCopyWith<T, $Res> {
  _$CommonViewSuccessStateCopyWithImpl(this._self, this._then);

  final CommonViewSuccessState<T> _self;
  final $Res Function(CommonViewSuccessState<T>) _then;

  /// Create a copy of CommonViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pageSuccessState = freezed,
  }) {
    return _then(CommonViewSuccessState<T>(
      freezed == pageSuccessState
          ? _self.pageSuccessState
          : pageSuccessState // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class CommonViewErrorState<T> implements CommonViewState<T> {
  const CommonViewErrorState(this.message);

  final String message;

  /// Create a copy of CommonViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CommonViewErrorStateCopyWith<T, CommonViewErrorState<T>> get copyWith =>
      _$CommonViewErrorStateCopyWithImpl<T, CommonViewErrorState<T>>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CommonViewErrorState<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'CommonViewState<$T>.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $CommonViewErrorStateCopyWith<T, $Res>
    implements $CommonViewStateCopyWith<T, $Res> {
  factory $CommonViewErrorStateCopyWith(CommonViewErrorState<T> value,
          $Res Function(CommonViewErrorState<T>) _then) =
      _$CommonViewErrorStateCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$CommonViewErrorStateCopyWithImpl<T, $Res>
    implements $CommonViewErrorStateCopyWith<T, $Res> {
  _$CommonViewErrorStateCopyWithImpl(this._self, this._then);

  final CommonViewErrorState<T> _self;
  final $Res Function(CommonViewErrorState<T>) _then;

  /// Create a copy of CommonViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(CommonViewErrorState<T>(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
