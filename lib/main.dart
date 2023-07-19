import 'package:counter_bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

@override
Widget build(BuildContext context) {
  return BlocProvider<CounterBloc>(
    create: (context) => CounterBloc(),
    child: BlocBuilder<CounterBloc, int>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.plus_one),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.exposure_minus_1),
              ),
            ],
          ),
          body: const Center(
            child: Text(
              '0',
              style: TextStyle(fontSize: 35),
            ),
          ),
        );
      },
    ),
  );
}
