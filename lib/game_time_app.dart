import 'package:flutter/material.dart';

import 'text_info.dart';
import 'up_button.dart';
import 'down_button.dart';
import 'reset_button.dart';

class GameTimeApp extends StatefulWidget {
  const GameTimeApp({super.key});

  @override
  State<GameTimeApp> createState() => _GameTimeAppState();
}

class _GameTimeAppState extends State<GameTimeApp> {
  num testNum = 0;

  void upNumber() {
    testNum++;
    setState(() {});
  }

  void downNumber() {
    if (testNum <= 0) {
      testNum = 0;
    } else {
      testNum--;
    }

    setState(() {});
  }

  void resetNumber() {
    testNum = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(8.00),
          decoration: BoxDecoration(
            color: const Color(0xFFFFFF5C),
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextInfo(testNum: testNum),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  textDirection: TextDirection.ltr,
                  children: [
                    DownButton(downNumber: downNumber),
                    ResetButton(resetNumber: resetNumber),
                    UpButton(upNumber: upNumber),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
