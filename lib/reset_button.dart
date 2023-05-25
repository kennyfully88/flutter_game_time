import 'package:flutter/material.dart';

class ResetButton extends StatefulWidget {
  const ResetButton({
    super.key,
    required this.resetNumber,
  });

  final Function resetNumber;

  @override
  State<ResetButton> createState() => _ResetButtonState();
}

class _ResetButtonState extends State<ResetButton> {
  bool touched = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        touched = true;
        widget.resetNumber();
      },
      onTapUp: (details) {
        setState(() {
          touched = false;
        });
      },
      child: Container(
        width: 100,
        decoration: BoxDecoration(
          color: touched ? Colors.red[50] : Colors.white,
          borderRadius: BorderRadius.circular(24.0),
        ),
        padding: const EdgeInsets.all(10.0),
        child: Text(
          'reset',
          style: TextStyle(
            color: touched ? Colors.red[900] : Colors.red[700],
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
