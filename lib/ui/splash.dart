import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_challenge1/ui/homepage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 200, 255, 248),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, CupertinoPageRoute(builder: (_) => HomePage()));
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.cyan)),
              child: const Text("Open UI"),
            )
          ],
        ),
      ),
    );
  }
}
