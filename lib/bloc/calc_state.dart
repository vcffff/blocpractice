abstract class CalcState {}

class Calcinitial extends CalcState {}

class Calcloading extends CalcState {}

class Calcsuccess extends CalcState {
  final String answer;
  Calcsuccess({required this.answer});
}

class Calcerror extends CalcState {
  final String error;
  Calcerror({required this.error}); 
}
