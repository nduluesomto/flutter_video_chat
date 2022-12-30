import 'package:flutter/material.dart';

import '../utils/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String name = "";
  static String userId = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Input your Details to continue',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 15),
              TextField(
                  onChanged: (value) {
                    MyLogin.name = value;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Name',
                    border: OutlineInputBorder(),
                  )),
              const SizedBox(height: 12),
              TextField(
                  onChanged: (value) {
                    MyLogin.userId = value;
                  },
                  decoration: const InputDecoration(
                    hintText: 'UserID',
                    border: OutlineInputBorder(),
                  )),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "home");
                  },
                  child: const Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}
