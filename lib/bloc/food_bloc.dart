import 'package:api_nyt_bloc_urwa/bloc/food_events.dart';
import 'package:api_nyt_bloc_urwa/bloc/food_state.dart';
import 'package:api_nyt_bloc_urwa/food.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FoodBloc extends Bloc<FoodFetchEvent, FoodState> {
  final API _foodApi = FoodApi();

  FoodBloc() : super(FoodInitialState()) {
    on<FoodFetchEvent>((event, emit) async {
      emit(FoodLoadingState());
      try {
        final results = await _foodApi.getFoodApi();
        emit(FoodLoadedState(results: results));
      } catch (e) {
        emit(FoodErrorState(errorMessage: e.toString()));
      }
    });
  }
}
