import 'package:flutter/material.dart';

class FoodLoadingWidget extends StatelessWidget {
  const FoodLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
