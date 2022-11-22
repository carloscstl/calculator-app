import 'package:calculator_app/provider.dart';
import 'package:flutter/material.dart';

import 'package:calculator_app/screens/calculator.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      home: ChangeNotifierProvider(
        create: (_) => CalculatorProvider(),
        lazy: false,
        child: const Calculator(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
