import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 223, 214, 250),
                Color.fromARGB(255, 68, 21, 149),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/images/quiz-logo.png",
                  width: 200,
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Learn Flutter the fun way!",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      "Start Quiz",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
