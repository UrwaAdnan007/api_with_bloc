import 'package:flutter/material.dart';

class FoodErrorWidget extends StatelessWidget {
  const FoodErrorWidget({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errorMessage));
  }
}
