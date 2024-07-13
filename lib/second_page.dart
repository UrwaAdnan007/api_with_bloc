import 'package:api_nyt_bloc_urwa/food_model.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final results = ModalRoute.of(context)!.settings.arguments as Result;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black87,
        title: const Text(
          'Detail',
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, bottom: 25),
            child: Text(
              results.title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25),
            ),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: CircleAvatar(
              backgroundImage: NetworkImage(results.uri),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              results.resultAbstract,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 22),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 0.0, left: 120),
            child: Text(
              results.byline,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.blueGrey,
                  fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }
}
