import 'package:flutter/material.dart';

import 'package:calculator_app/theme.dart';
import 'package:calculator_app/widgets/widgets.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppTheme.primary,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Display(),
            CalculatorKeyboard(),
          ],
        ),
      ),
    );
  }
}