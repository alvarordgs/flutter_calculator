import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  final String textValue;
  final Color bgColor;
  final Color fontColor;
  final Function callback;

  const CalcButton(
      {this.textValue = '',
      this.bgColor = Colors.white,
      this.fontColor = Colors.black54,
      required this.callback,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callback(textValue);
      },
      child: Container(
          color: bgColor,
          child: Center(
            child: DefaultTextStyle(
              style: GoogleFonts.concertOne(
                textStyle: TextStyle(
                  fontSize: 32,
                  color: fontColor,
                ),
              ),
              child: Text(textValue),
            ),
          )),
    );
  }
}
