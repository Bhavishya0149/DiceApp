import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int d1 = Random().nextInt(6) + 1;
  int d2 = Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 5,
          shadowColor: Colors.black,
          backgroundColor: Colors.teal,
          title: const Text("Dice"),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton(
                    onPressed:(){
                      setState(() {
                        d1 = Random().nextInt(6) + 1;
                        d2 = Random().nextInt(6) + 1;
                      });
                      print("$d1 $d2");
                    },
                    child: Image.asset("images/D$d1.png")
                  ),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        d1 = Random().nextInt(6) + 1;
                        d2 = Random().nextInt(6) + 1;
                      });
                      print("$d1 $d2");
                    },
                    child: Image.asset("images/D$d2.png")
                  ),
              ),
            ],
          ),
        ),
      )
    );
  }
}