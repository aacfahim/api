import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showSnackBar(String text, BuildContext context) {
  final snackBar = SnackBar(
    content: Text(text),
    action: SnackBarAction(
      label: 'dismiss',
      onPressed: () {},
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
