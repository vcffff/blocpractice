import 'package:blocpractice/bloc/calc_bloc.dart';
import 'package:blocpractice/bloc/calc_event.dart';
import 'package:blocpractice/bloc/calc_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  final TextEditingController first = TextEditingController();
  final TextEditingController second = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: first,
            decoration: InputDecoration(label: Text('first num')),
          ),
          TextField(
            controller: second,
            decoration: InputDecoration(label: Text('second num')),
          ),
          BlocBuilder<CalcBloc, CalcState>(
            builder: (context, state) {
              print(state);
              print('21');
              if (state is Calcloading) {
                return const CircularProgressIndicator();
              }
              if (state is Calcsuccess) {
                return Text(
                  state.answer,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                );
              }
              if (state is Calcerror) {
                return Text(
                  state.error,
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                );
              }
              return SizedBox.shrink();
            },
          ),
        ],
      ),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CalcBloc>(
                context,
              ).add(sum(one: first.text, second: second.text));
            },
            tooltip: 'increase',
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CalcBloc>(
                context,
              ).add(difference(one: first.text, second: second.text));
            },
          ),
        ],
      ),
    );
  }
}
