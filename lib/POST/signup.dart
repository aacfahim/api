import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart';
import 'package:test_app/utils/const.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void signup(String email, password, BuildContext context) async {
    try {
      Response response = await post(
          //for login, simply change the end point e.g 'login' instead of register.
          Uri.parse('https://reqres.in/api/register'),
          body: {'email': email, 'password': password});

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data);
        showSnackBar("Account Created", context);
      } else {
        showSnackBar("Failed to create", context);
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up using API")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    signup(
                        emailController.text, passwordController.text, context);
                  },
                  child: Text("Sign Up")),
              SizedBox(height: 20),
              TextButton(
                  onPressed: () {},
                  child: Text("if already registered click here"))
            ]),
      ),
    );
  }
}
