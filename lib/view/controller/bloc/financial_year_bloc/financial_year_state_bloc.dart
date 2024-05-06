import 'package:freezed_annotation/freezed_annotation.dart';

part 'financial_year_state_bloc.freezed.dart';

@freezed
class FinancialYearState with _$FinancialYearState{
  factory FinancialYearState({
    required String? error,
    required DateTime? fromDate,
    DateTime? selectedDate,
  required DateTime? toDate, 
  }) = _FinancialYearState;
}


