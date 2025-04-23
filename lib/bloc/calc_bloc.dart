import 'package:bloc/bloc.dart';
import 'package:blocpractice/bloc/calc_event.dart';
import 'package:blocpractice/bloc/calc_state.dart';

class CalcBloc extends Bloc<CalcEvent, CalcState> {
  CalcBloc() : super(Calcinitial()) {
    on<sum>((event, emit) async {
      emit(Calcloading());
      await Future.delayed(Duration(seconds: 2));
      try {
        int sum = int.parse(event.one) + int.parse(event.second);
        emit(Calcsuccess(answer: sum.toString()));
      } catch (e) {
        emit(Calcerror(error: 'error pls only nums'));
      }
    });
        on<difference>((event, emit) async {
      emit(Calcloading());
      await Future.delayed(Duration(seconds: 2));
      try {
        int sum = int.parse(event.one) - int.parse(event.second);
        emit(Calcsuccess(answer: sum.toString()));
      } catch (e) {
        emit(Calcerror(error: 'error pls only nums'));
      }
        }
        );
    
  
}
}