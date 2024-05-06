
import 'package:bloc/bloc.dart';

sealed class DateEvent {}

class FromDateSelected extends DateEvent {
  final DateTime date;

  FromDateSelected(this.date);
}

class ToDateSelected extends DateEvent {
  final DateTime date;

  ToDateSelected(this.date);
}

class DateRangeBloc extends Bloc<DateEvent, Map<String, DateTime>> {
  DateRangeBloc() : super({'from': DateTime.now(), 'to': DateTime.now()}) {
    on<FromDateSelected>((event, emit) {
      emit(state..['from'] = event.date);
    });
    on<ToDateSelected>((event, emit) {
      emit(state..['to'] = event.date);
    });
  }
}
