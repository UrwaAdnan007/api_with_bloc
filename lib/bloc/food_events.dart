import 'package:flutter/material.dart';

@immutable
abstract class FoodEvents {}

@immutable
class FoodsFetchEvent extends FoodEvents {}

@immutable
class FoodFetchEvent extends FoodEvents {}
