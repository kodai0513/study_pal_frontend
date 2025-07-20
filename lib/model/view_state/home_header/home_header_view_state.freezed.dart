// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_header_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeHeaderViewState {
  String get selectedKey;

  /// Create a copy of HomeHeaderViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeHeaderViewStateCopyWith<HomeHeaderViewState> get copyWith =>
      _$HomeHeaderViewStateCopyWithImpl<HomeHeaderViewState>(
          this as HomeHeaderViewState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeHeaderViewState &&
            (identical(other.selectedKey, selectedKey) ||
                other.selectedKey == selectedKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedKey);

  @override
  String toString() {
    return 'HomeHeaderViewState(selectedKey: $selectedKey)';
  }
}

/// @nodoc
abstract mixin class $HomeHeaderViewStateCopyWith<$Res> {
  factory $HomeHeaderViewStateCopyWith(
          HomeHeaderViewState value, $Res Function(HomeHeaderViewState) _then) =
      _$HomeHeaderViewStateCopyWithImpl;
  @useResult
  $Res call({String selectedKey});
}

/// @nodoc
class _$HomeHeaderViewStateCopyWithImpl<$Res>
    implements $HomeHeaderViewStateCopyWith<$Res> {
  _$HomeHeaderViewStateCopyWithImpl(this._self, this._then);

  final HomeHeaderViewState _self;
  final $Res Function(HomeHeaderViewState) _then;

  /// Create a copy of HomeHeaderViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedKey = null,
  }) {
    return _then(_self.copyWith(
      selectedKey: null == selectedKey
          ? _self.selectedKey
          : selectedKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _HomeHeaderViewState implements HomeHeaderViewState {
  const _HomeHeaderViewState({required this.selectedKey});

  @override
  final String selectedKey;

  /// Create a copy of HomeHeaderViewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeHeaderViewStateCopyWith<_HomeHeaderViewState> get copyWith =>
      __$HomeHeaderViewStateCopyWithImpl<_HomeHeaderViewState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeHeaderViewState &&
            (identical(other.selectedKey, selectedKey) ||
                other.selectedKey == selectedKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedKey);

  @override
  String toString() {
    return 'HomeHeaderViewState(selectedKey: $selectedKey)';
  }
}

/// @nodoc
abstract mixin class _$HomeHeaderViewStateCopyWith<$Res>
    implements $HomeHeaderViewStateCopyWith<$Res> {
  factory _$HomeHeaderViewStateCopyWith(_HomeHeaderViewState value,
          $Res Function(_HomeHeaderViewState) _then) =
      __$HomeHeaderViewStateCopyWithImpl;
  @override
  @useResult
  $Res call({String selectedKey});
}

/// @nodoc
class __$HomeHeaderViewStateCopyWithImpl<$Res>
    implements _$HomeHeaderViewStateCopyWith<$Res> {
  __$HomeHeaderViewStateCopyWithImpl(this._self, this._then);

  final _HomeHeaderViewState _self;
  final $Res Function(_HomeHeaderViewState) _then;

  /// Create a copy of HomeHeaderViewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedKey = null,
  }) {
    return _then(_HomeHeaderViewState(
      selectedKey: null == selectedKey
          ? _self.selectedKey
          : selectedKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
