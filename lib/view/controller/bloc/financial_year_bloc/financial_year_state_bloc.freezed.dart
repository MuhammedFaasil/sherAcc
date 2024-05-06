// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'financial_year_state_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FinancialYearState {
  String? get error => throw _privateConstructorUsedError;
  DateTime? get fromDate => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;
  DateTime? get toDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FinancialYearStateCopyWith<FinancialYearState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancialYearStateCopyWith<$Res> {
  factory $FinancialYearStateCopyWith(
          FinancialYearState value, $Res Function(FinancialYearState) then) =
      _$FinancialYearStateCopyWithImpl<$Res, FinancialYearState>;
  @useResult
  $Res call(
      {String? error,
      DateTime? fromDate,
      DateTime? selectedDate,
      DateTime? toDate});
}

/// @nodoc
class _$FinancialYearStateCopyWithImpl<$Res, $Val extends FinancialYearState>
    implements $FinancialYearStateCopyWith<$Res> {
  _$FinancialYearStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? fromDate = freezed,
    Object? selectedDate = freezed,
    Object? toDate = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinancialYearStateImplCopyWith<$Res>
    implements $FinancialYearStateCopyWith<$Res> {
  factory _$$FinancialYearStateImplCopyWith(_$FinancialYearStateImpl value,
          $Res Function(_$FinancialYearStateImpl) then) =
      __$$FinancialYearStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? error,
      DateTime? fromDate,
      DateTime? selectedDate,
      DateTime? toDate});
}

/// @nodoc
class __$$FinancialYearStateImplCopyWithImpl<$Res>
    extends _$FinancialYearStateCopyWithImpl<$Res, _$FinancialYearStateImpl>
    implements _$$FinancialYearStateImplCopyWith<$Res> {
  __$$FinancialYearStateImplCopyWithImpl(_$FinancialYearStateImpl _value,
      $Res Function(_$FinancialYearStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? fromDate = freezed,
    Object? selectedDate = freezed,
    Object? toDate = freezed,
  }) {
    return _then(_$FinancialYearStateImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$FinancialYearStateImpl implements _FinancialYearState {
  _$FinancialYearStateImpl(
      {required this.error,
      required this.fromDate,
      this.selectedDate,
      required this.toDate});

  @override
  final String? error;
  @override
  final DateTime? fromDate;
  @override
  final DateTime? selectedDate;
  @override
  final DateTime? toDate;

  @override
  String toString() {
    return 'FinancialYearState(error: $error, fromDate: $fromDate, selectedDate: $selectedDate, toDate: $toDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinancialYearStateImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, error, fromDate, selectedDate, toDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinancialYearStateImplCopyWith<_$FinancialYearStateImpl> get copyWith =>
      __$$FinancialYearStateImplCopyWithImpl<_$FinancialYearStateImpl>(
          this, _$identity);
}

abstract class _FinancialYearState implements FinancialYearState {
  factory _FinancialYearState(
      {required final String? error,
      required final DateTime? fromDate,
      final DateTime? selectedDate,
      required final DateTime? toDate}) = _$FinancialYearStateImpl;

  @override
  String? get error;
  @override
  DateTime? get fromDate;
  @override
  DateTime? get selectedDate;
  @override
  DateTime? get toDate;
  @override
  @JsonKey(ignore: true)
  _$$FinancialYearStateImplCopyWith<_$FinancialYearStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
