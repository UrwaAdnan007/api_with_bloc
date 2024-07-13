import 'dart:convert';

import 'package:http/http.dart' as http;
import 'food_model.dart';

abstract class API {
  Future<List<Result>> getFoodApi();
}

class FoodApi implements API {
  @override
  Future<List<Result>> getFoodApi() async {
    var response = await http.get(Uri.parse(
        'https://api.nytimes.com/svc/topstories/v2/food.json?api-key=SYhA6xwMBTYWRK4Ek9EmTFKdip9AGRAC'));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List<Result> foods = Food.fromJson(data).results;
      return foods;
    } else {
      throw Exception();
    }
  }
}
