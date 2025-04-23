import 'package:bloc/bloc.dart';
import 'package:blocpractice/bloc/calc_bloc.dart';
import 'package:flutter/material.dart';
import 'first.dart  ';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(Mainapp());
}

class Mainapp extends StatefulWidget {
  const Mainapp({super.key});

  @override
  State<Mainapp> createState() => _MainappState();
}

class _MainappState extends State<Mainapp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalcBloc(),
      child: MaterialApp(home: First()),
    );
  }
}
