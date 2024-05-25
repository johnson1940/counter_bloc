import 'package:counter_bloc/bloc/counter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterBloc, CounterBlocState>(
        builder: (context, state) {
          int counterValue = 0;
          if (state is CounterValue) {
            counterValue = state.value;
          }
          return Center(
            child: Text('$counterValue'),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () => context.read<CounterBloc>().add(CounterIncrementEvent()),
            icon: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () => context.read<CounterBloc>().add(CounterDecrementEvent()),
            icon: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
