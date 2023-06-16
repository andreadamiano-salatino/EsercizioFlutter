import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:login/models/post_model.dart';

class ListScreeen extends StatefulWidget {
  const ListScreeen({super.key});

  @override
  State<ListScreeen> createState() => _ListScreeenState();
}

List<PostModel> postModel = [];

class _ListScreeenState extends State<ListScreeen> {
  Future<void> _getListUsers() async {
    final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
        headers: {"Content-Type": "application/json"});

    var resObj = jsonDecode(response.body);

    if (response.statusCode == 200) {
      setState(() {
        postModel = [];
        postModel = (resObj as List).map((e) => PostModel.fromJson(e)).toList();
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
      itemCount: postModel.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Column(
            children: [
              Text(
                postModel[index].userId.toString(),
              ),
              Text(postModel[index].id.toString()),
              Text(postModel[index].title!),
              Text(postModel[index].body!),
            ],
          ),
        );
      },
    ));
  }
}
