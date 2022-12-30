# flutter_video_chat

Flutter App with video call feature using Zegocloud API

## Getting Started

#### Note
The camera functionalities doesn't work on both Android and IOS emulators. It needs to be tested via real devices

### Folder Structure
Here is the core folder structure which flutter provides.
<code>
flutter-app/
 |- android
 |- build
 |- ios
 |- lib
 |- test
 </code>
 
 Here is the folder structure I used in this project
<code> 
lib/
|- screens/
  |- screens/home_screen.dart
  |- screens/login_screen.dart
|- utils/
  |- utils/call_model.dart
  |- utils/constants.dart
|- main.dart</code>


### Main
<code>import 'package:flutter/material.dart';
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
  } }</code>


#### Dummy Login Page(For name & userId)
<img src="https://user-images.githubusercontent.com/120676400/210108816-7fab4fe4-7f84-496b-979d-bd0757e07407.png" width="360" height="800">


#### HomePage
<img src="https://user-images.githubusercontent.com/120676400/210108893-f646f118-b437-4291-ab2d-33561d6411e6.png" width="360" height="800">


#### Call Screen (Triggered by 'Join Call' button)
<img src="https://user-images.githubusercontent.com/120676400/210108975-b1eb2480-9e2e-4a25-a110-a9182da06d47.png" width="360" height="800">
