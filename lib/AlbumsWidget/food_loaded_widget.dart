import 'package:api_nyt_bloc_urwa/second_page.dart';
import 'package:flutter/material.dart';
import '../food_model.dart';

class FoodLoadedWidget extends StatelessWidget {
  const FoodLoadedWidget({super.key, required this.results});
  final List<Result> results;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black87,
          title: const Text(
            'Food',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
        ),
        body: Expanded(
          flex: 8,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    height: 305,
                    width: 355,
                    color: Colors.white,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SecondPage(),
                          settings: RouteSettings(
                            arguments: results[index],
                          ),
                        ),
                      );
                    },
                    child: Positioned(
                      left: 20,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Container(
                          height: 250,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: ListTile(
                            title: Center(
                              child: Text(
                                results[index].title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 240,
                    left: 65,
                    child: Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 244,
                    left: 69,
                    child: Container(
                      height: 57,
                      width: 57,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          "${index + 1}",
                          style: const TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ));
  }
}
