import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:test_app/model/product_model.dart';

class ExampleFive extends StatefulWidget {
  const ExampleFive({super.key});

  @override
  State<ExampleFive> createState() => _ExampleFiveState();
}

class _ExampleFiveState extends State<ExampleFive> {
  Future<ProductModel> getProducts() async {
    final response = await http.get(
        Uri.parse('https://webhook.site/d7476a41-bda5-47bb-bc6e-df340222c7ed'));

    var data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      return ProductModel.fromJson(data);
    } else {
      // print("response code:" + response.statusCode.toString());
      return ProductModel.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.data!.length,
              itemBuilder: (context, index) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data!.data![index].products!.length,
                  itemBuilder: (context, jdex) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot
                          .data!.data![index].products![jdex].images!.length,
                      itemBuilder: (context, kdex) {
                        return CircleAvatar(
                            backgroundImage: NetworkImage(snapshot.data!
                                .data![index].products![jdex].images![kdex].url
                                .toString()));
                      },
                    );
                  },
                );
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
