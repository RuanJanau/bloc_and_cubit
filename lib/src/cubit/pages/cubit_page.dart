import 'package:bloc_and_cubit_exemple/src/cubit/controllers/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitPage extends StatefulWidget {
  const CubitPage({super.key});

  @override
  State<CubitPage> createState() => _CubitPageState();
}

class _CubitPageState extends State<CubitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Cubit'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              return Text('Counter ${state.counter}',
                  style: Theme.of(context).textTheme.headlineMedium);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                onPressed: () {
                  context
                      .read<CounterCubit>()
                      .increment(); // aqui ja nao precisei usar o ".add"
                },
                icon: const Icon(Icons.add),
                label: const Text(''),
              ),
              TextButton.icon(
                onPressed: () {
                  context.read<CounterCubit>().decrement();
                },
                icon: const Icon(Icons.remove),
                label: const Text(''),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

