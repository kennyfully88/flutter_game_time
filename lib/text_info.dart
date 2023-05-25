import 'package:flutter/material.dart';

class TextInfo extends StatelessWidget {
  const TextInfo({
    super.key,
    required this.testNum,
  });

  final num testNum;

  String checkTest() {
    String testResult = "";

    if (testNum <= 0) {
      testResult = 'Don`t be scared to push a button.';
    } else if (testNum >= 1 && testNum <= 5) {
      testResult = 'Good';
    } else if (testNum >= 6 && testNum <= 10) {
      testResult = 'Great!';
    } else {
      testResult = 'You\'re the tap Master!!';
    }

    return testResult;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: AssetImage('assets/nicer.png')),
          Text(
            'You pushed the button $testNum time${testNum == 1 ? '' : 's'}.',
            style: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 24,
            ),
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
          ),
          AnimatedDefaultTextStyle(
            style: TextStyle(
              color: testNum <= 0
                  ? const Color(0xFF005500)
                  : const Color(0xFF000000),
              fontSize: testNum <= 0 ? 18 : 32,
            ),
            duration: const Duration(milliseconds: 500),
            child: Text(
              checkTest(),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
