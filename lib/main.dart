import 'package:flutter/material.dart';
import 'package:flutter_calculator/components/calc_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Container(
        color: Colors.blue,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 300,
            ),
            Expanded(
              child: Table(
                children: const [
                  TableRow(
                    children: [
                      CalcButton(btnColor: Colors.grey, btnValue: '1'),
                      CalcButton(btnColor: Colors.grey, btnValue: '2'),
                      CalcButton(btnColor: Colors.grey, btnValue: '3'),
                      CalcButton(btnColor: Colors.grey, btnValue: '/'),
                    ],
                  ),
                  TableRow(
                    children: [
                      CalcButton(btnColor: Colors.grey, btnValue: '4'),
                      CalcButton(btnColor: Colors.grey, btnValue: '5'),
                      CalcButton(btnColor: Colors.grey, btnValue: '6'),
                      CalcButton(btnColor: Colors.grey, btnValue: '*'),
                    ],
                  ),
                  TableRow(
                    children: [
                      CalcButton(btnColor: Colors.grey, btnValue: '7'),
                      CalcButton(btnColor: Colors.grey, btnValue: '8'),
                      CalcButton(btnColor: Colors.grey, btnValue: '9'),
                      CalcButton(btnColor: Colors.grey, btnValue: '-'),
                    ],
                  ),
                  TableRow(
                    children: [
                      CalcButton(btnColor: Colors.grey, btnValue: '.'),
                      CalcButton(btnColor: Colors.grey, btnValue: '0'),
                      CalcButton(btnColor: Colors.grey, btnValue: 'Del'),
                      CalcButton(btnColor: Colors.grey, btnValue: '+'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
