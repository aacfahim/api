import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({super.key});

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {
  List<PhotosModel> photos = [];

  Future<List<PhotosModel>> getPhotos() async {
    var response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    var data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      for (var i in data) {
        PhotosModel photosModel =
            PhotosModel(id: i['id'], title: i['title'], url: i['url']);
        photos.add(photosModel);
      }
      return photos;
    } else {
      return photos;
    }
  }

  @override
  void didChangeDependencies() async {
    photos = await getPhotos();
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //can also be written with FutureBuilder widget
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: photos.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage(photos[index].url.toString())),
            title: Text(photos[index].title.toString()),
            subtitle: Text('id:' + photos[index].id.toString()),
          );
        },
      ),
    );
  }
}

class PhotosModel {
  String title, url;
  int id;

  PhotosModel({required this.id, required this.title, required this.url});
}
