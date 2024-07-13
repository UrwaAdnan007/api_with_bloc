import 'package:api_nyt_bloc_urwa/AlbumsWidget/food_loading_widget.dart';
import 'package:api_nyt_bloc_urwa/bloc/food_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'AlbumsWidget/food_error_widget.dart';
import 'AlbumsWidget/food_initial_widget.dart';
import 'AlbumsWidget/food_loaded_widget.dart';
import 'bloc/food_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider<FoodBloc>(
          create: (context) => FoodBloc(),
          child: const MyHomePage(title: 'Flutter Demo Home Page')),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: BlocBuilder<FoodBloc, FoodState>(
        builder: (context, state) {
          if (state is FoodInitialState) {
            return const FoodInitialWidget();
          } else if (state is FoodLoadingState) {
            return const FoodLoadingWidget();
          } else if (state is FoodLoadedState) {
            return FoodLoadedWidget(results: state.results);
          } else {
            return FoodErrorWidget(
                errorMessage: (state as FoodErrorState).errorMessage);
          }
        },
      )),
    );
  }
}
