import 'package:flutter/material.dart';

class UpButton extends StatefulWidget {
  const UpButton({
    super.key,
    required this.upNumber,
  });

  final Function upNumber;

  @override
  State<UpButton> createState() => _UpButtonState();
}

class _UpButtonState extends State<UpButton> {
  bool touched = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        touched = true;
        widget.upNumber();
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
          '➕',
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
