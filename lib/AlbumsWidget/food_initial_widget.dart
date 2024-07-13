import 'package:api_nyt_bloc_urwa/bloc/food_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/food_events.dart';

class FoodInitialWidget extends StatelessWidget {
  const FoodInitialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black87,
        title: const Text(
          'Top Catogaries',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              GestureDetector(
                onTap: () {
                  context.read<FoodBloc>().add(FoodFetchEvent());
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 50, left: 50),
                  child: SizedBox(
                    height: 260,
                    width: 400,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRen-QMsYrsL6-LabzlCWah1uIIHil8aANCk6zCkY72-Q&s',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Container(
                  width: 400,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black.withOpacity(0.65),
                  ),
                  child: const Center(
                      child: Text(
                    'FOOD',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              ),
            ],
          ),
        ],
      ),
      // child: ElevatedButton(
      //     onPressed: () {
      //       context.read<FoodBloc>().add(FoodFetchEvent());
      //     },
    );
  }
}
