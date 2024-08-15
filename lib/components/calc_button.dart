import 'package:flutter/material.dart';

class CalcButton extends StatefulWidget {
  final String btnValue;
  final Color btnColor;

  const CalcButton(
      {this.btnValue = '', this.btnColor = Colors.white, super.key});

  @override
  State<CalcButton> createState() => _CalcButtonState();
}

class _CalcButtonState extends State<CalcButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: widget.btnColor, minimumSize: Size.zero),
        child: Text(widget.btnValue));
  }
}
