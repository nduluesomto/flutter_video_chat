import 'package:flutter/material.dart';
import 'package:flutter_video_chat/screens/home_screen.dart';
import 'package:flutter_video_chat/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      routes: {
        "login": (context) => const LoginScreen(),
        "home": (context) => const HomePage(),
      },
      initialRoute: "login",
    );
  }
}
