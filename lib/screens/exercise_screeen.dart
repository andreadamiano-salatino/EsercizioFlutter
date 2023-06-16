import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:login/models/photo_model.dart';
import 'package:http/http.dart' as http;

class ExerciseScreeen extends StatefulWidget {
  const ExerciseScreeen({super.key});

  @override
  State<ExerciseScreeen> createState() => _ExerciseScreeenState();
}

List<PhotoModel> photoModel = [];

class _ExerciseScreeenState extends State<ExerciseScreeen> {
  Future<void> _getListUsers() async {
    final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/photos'),
        headers: {"Content-Type": "application/json"});

    var resObj = jsonDecode(response.body);

    if (response.statusCode == 200) {
      setState(() {
        photoModel = [];
        photoModel =
            (resObj as List).map((e) => PhotoModel.fromJson(e)).toList();
      });
    } else {
      print("Errore nella richiesta");
    }
  }

  @override
  void initState() {
    //TODO: implement initState
    super.initState();
    _getListUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: photoModel.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Column(
            children: [
              Image.network(photoModel[index].thumbnailUrl!),
              Text(
                photoModel[index].albumId.toString(),
              ),
              Text(photoModel[index].id.toString()),
              Text(photoModel[index].title!),
              Image.network(photoModel[index].url!),
            ],
          ),
        );
      },
    ));
  }
}
