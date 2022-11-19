import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/counter_bloc.dart';

class BlocPage extends StatefulWidget {
  const BlocPage({super.key});

  @override
  State<BlocPage> createState() => _BlocPageState();
}

class _BlocPageState extends State<BlocPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Bloc'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
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
                  context.read<CounterBloc>().add(CounterIncrement());
                },
                icon: const Icon(Icons.add),
                label: const Text(''),
              ),
              TextButton.icon(
                onPressed: () {
                  context.read<CounterBloc>().add(CounterDecrement());
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
