import 'package:flutter/material.dart';

import '../food_model.dart';

@immutable
abstract class FoodState {
  const FoodState();
}

@immutable
class FoodInitialState extends FoodState {}

@immutable
class FoodLoadingState extends FoodState {}

@immutable
class FoodLoadedState extends FoodState {
  final List<Result> results;
  FoodLoadedState({required this.results});
}

@immutable
class FoodErrorState extends FoodState {
  final String errorMessage;
  FoodErrorState({required this.errorMessage});
}
