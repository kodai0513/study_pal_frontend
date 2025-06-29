// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TimelinePageSuccessState {
  TimelineViewState get timeline;

  /// Create a copy of TimelinePageSuccessState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TimelinePageSuccessStateCopyWith<TimelinePageSuccessState> get copyWith =>
      _$TimelinePageSuccessStateCopyWithImpl<TimelinePageSuccessState>(
          this as TimelinePageSuccessState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TimelinePageSuccessState &&
            (identical(other.timeline, timeline) ||
                other.timeline == timeline));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeline);

  @override
  String toString() {
    return 'TimelinePageSuccessState(timeline: $timeline)';
  }
}

/// @nodoc
abstract mixin class $TimelinePageSuccessStateCopyWith<$Res> {
  factory $TimelinePageSuccessStateCopyWith(TimelinePageSuccessState value,
          $Res Function(TimelinePageSuccessState) _then) =
      _$TimelinePageSuccessStateCopyWithImpl;
  @useResult
  $Res call({TimelineViewState timeline});

  $TimelineViewStateCopyWith<$Res> get timeline;
}

/// @nodoc
class _$TimelinePageSuccessStateCopyWithImpl<$Res>
    implements $TimelinePageSuccessStateCopyWith<$Res> {
  _$TimelinePageSuccessStateCopyWithImpl(this._self, this._then);

  final TimelinePageSuccessState _self;
  final $Res Function(TimelinePageSuccessState) _then;

  /// Create a copy of TimelinePageSuccessState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeline = null,
  }) {
    return _then(_self.copyWith(
      timeline: null == timeline
          ? _self.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as TimelineViewState,
    ));
  }

  /// Create a copy of TimelinePageSuccessState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimelineViewStateCopyWith<$Res> get timeline {
    return $TimelineViewStateCopyWith<$Res>(_self.timeline, (value) {
      return _then(_self.copyWith(timeline: value));
    });
  }
}

/// @nodoc

class _TimelinePageSuccessState implements TimelinePageSuccessState {
  const _TimelinePageSuccessState({required this.timeline});

  @override
  final TimelineViewState timeline;

  /// Create a copy of TimelinePageSuccessState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TimelinePageSuccessStateCopyWith<_TimelinePageSuccessState> get copyWith =>
      __$TimelinePageSuccessStateCopyWithImpl<_TimelinePageSuccessState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimelinePageSuccessState &&
            (identical(other.timeline, timeline) ||
                other.timeline == timeline));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeline);

  @override
  String toString() {
    return 'TimelinePageSuccessState(timeline: $timeline)';
  }
}

/// @nodoc
abstract mixin class _$TimelinePageSuccessStateCopyWith<$Res>
    implements $TimelinePageSuccessStateCopyWith<$Res> {
  factory _$TimelinePageSuccessStateCopyWith(_TimelinePageSuccessState value,
          $Res Function(_TimelinePageSuccessState) _then) =
      __$TimelinePageSuccessStateCopyWithImpl;
  @override
  @useResult
  $Res call({TimelineViewState timeline});

  @override
  $TimelineViewStateCopyWith<$Res> get timeline;
}

/// @nodoc
class __$TimelinePageSuccessStateCopyWithImpl<$Res>
    implements _$TimelinePageSuccessStateCopyWith<$Res> {
  __$TimelinePageSuccessStateCopyWithImpl(this._self, this._then);

  final _TimelinePageSuccessState _self;
  final $Res Function(_TimelinePageSuccessState) _then;

  /// Create a copy of TimelinePageSuccessState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? timeline = null,
  }) {
    return _then(_TimelinePageSuccessState(
      timeline: null == timeline
          ? _self.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as TimelineViewState,
    ));
  }

  /// Create a copy of TimelinePageSuccessState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimelineViewStateCopyWith<$Res> get timeline {
    return $TimelineViewStateCopyWith<$Res>(_self.timeline, (value) {
      return _then(_self.copyWith(timeline: value));
    });
  }
}

// dart format on
