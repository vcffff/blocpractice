abstract class CalcEvent {}
class sum extends CalcEvent{
  final String one;
  final String second;
  sum({required this.one,required this.second});
}

class difference extends CalcEvent{
  final String one;
  final String second;
  difference({required this.one,required this.second});
}