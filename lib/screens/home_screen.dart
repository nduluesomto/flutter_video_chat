import 'package:flutter/material.dart';
import 'package:flutter_video_chat/utils/call_model.dart';
import 'package:flutter_video_chat/utils/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Home"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_outlined)),
      ),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  Text(
                    "This App's Feature is a sample app for video chatting amongst users in real-time using Zegocloud Video Chat API. ",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "(Also note, the camera functionalities doesn't work on both android and ios emulators. It needs to be tested via real devices)",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        print(MyLogin.userId);
                      },
                      child: const Text('Print user')),
                  const SizedBox(width: 50),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const CallModel(callID: "J")));
                      },
                      child: const Text('Join Call')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
