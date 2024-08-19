import 'package:flutter/material.dart';
import 'package:flutter_calculator/components/calc_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _history = '';
  String _expression = '';

  void numClick(String text) {
    setState(() {
      _expression += text;
    });
  }

  void clear(String text) {
    setState(() {
      _expression = '';
    });
  }

  void clearAll(String text) {
    setState(() {
      _expression = '';
      _history = '';
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();

    setState(() {
      _history = _expression;
      _expression = exp.evaluate(EvaluationType.REAL, cm).toString();
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Column(
        children: [
          Container(
            color: Colors.deepPurple,
            height: 300,
            width: double.maxFinite,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DefaultTextStyle(
                    style: GoogleFonts.concertOne(
                      color: Colors.white54,
                      fontSize: 48,
                    ),
                    child: Text(
                      _history,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DefaultTextStyle(
                    style: GoogleFonts.concertOne(
                      color: Colors.white,
                      fontSize: 62,
                    ),
                    child: Text(
                      _expression,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: CalcButton(
                              textValue: '1',
                              callback: numClick,
                            )),
                            Expanded(
                                child: CalcButton(
                              textValue: '2',
                              callback: numClick,
                            )),
                            Expanded(
                                child: CalcButton(
                                    textValue: '3', callback: numClick)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: CalcButton(
                                    textValue: '4', callback: numClick)),
                            Expanded(
                                child: CalcButton(
                                    textValue: '5', callback: numClick)),
                            Expanded(
                                child: CalcButton(
                                    textValue: '6', callback: numClick)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: CalcButton(
                                    textValue: '7', callback: numClick)),
                            Expanded(
                                child: CalcButton(
                                    textValue: '8', callback: numClick)),
                            Expanded(
                                child: CalcButton(
                                    textValue: '9', callback: numClick)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: CalcButton(
                                    textValue: '.', callback: numClick)),
                            Expanded(
                                child: CalcButton(
                                    textValue: '0', callback: numClick)),
                            Expanded(
                                child: CalcButton(
                              textValue: 'C',
                              callback: clear,
                            )),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: CalcButton(
                                    textValue: '=', callback: evaluate)),
                            Expanded(
                                flex: 1,
                                child: CalcButton(
                                  textValue: 'CA',
                                  callback: clearAll,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                          child: CalcButton(
                              bgColor: Colors.amber,
                              textValue: '/',
                              fontColor: Colors.white,
                              callback: numClick)),
                      Expanded(
                          child: CalcButton(
                              bgColor: Colors.blue,
                              textValue: '*',
                              fontColor: Colors.white,
                              callback: numClick)),
                      Expanded(
                          child: CalcButton(
                              bgColor: Colors.orange,
                              textValue: '-',
                              fontColor: Colors.white,
                              callback: numClick)),
                      Expanded(
                          flex: 2,
                          child: CalcButton(
                              bgColor: Colors.green,
                              textValue: '+',
                              fontColor: Colors.white,
                              callback: numClick)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
