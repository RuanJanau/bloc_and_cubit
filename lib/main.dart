import 'package:bloc_and_cubit_exemple/home_page.dart';
import 'package:bloc_and_cubit_exemple/src/bloc/controllers/counter_bloc.dart';
import 'package:bloc_and_cubit_exemple/src/bloc/pages/bloc_page.dart';
import 'package:bloc_and_cubit_exemple/src/cubit/controllers/counter_cubit.dart';
import 'package:bloc_and_cubit_exemple/src/cubit/pages/cubit_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/bloc': (_) => BlocProvider(
              create: (_) => CounterBloc(),
              child: const BlocPage(),
            ),
        '/cubit': (_) => BlocProvider(
              create: (_) => CounterCubit(),
              child: const CubitPage(),
            ),
      },
      home: const HomePage(),
    );
  }
}
