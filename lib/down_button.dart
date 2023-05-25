import 'package:flutter/material.dart';

class DownButton extends StatefulWidget {
  const DownButton({
    super.key,
    required this.downNumber,
  });

  final Function downNumber;

  @override
  State<DownButton> createState() => _DownButtonState();
}

class _DownButtonState extends State<DownButton> {
  bool touched = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        touched = true;
        widget.downNumber();
      },
      onTapUp: (details) {
        setState(() {
          touched = false;
        });
      },
      child: Container(
        width: 100,
        decoration: BoxDecoration(
          color: touched ? Colors.green[50] : Colors.white,
          borderRadius: BorderRadius.circular(24.0),
        ),
        padding: const EdgeInsets.all(10.0),
        child: Text(
          '➖',
          style: TextStyle(
            color: touched ? Colors.green[900] : Colors.green[700],
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
