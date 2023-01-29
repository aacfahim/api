import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_app/model/post_model.dart';
import 'package:http/http.dart' as http;

class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  final List<PostModel> posts = [];
  Future<List<PostModel>> getPost() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    var data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      for (var i in data) {
        posts.add(PostModel.fromJson(i));
      }
      return posts;
    } else {
      return posts;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("API Playground")),
        body: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: getPost(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    return ListView.builder(
                      itemCount: posts.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                            title: Text(posts[index].title.toString()));
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ));
  }
}
