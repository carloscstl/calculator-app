import 'package:flutter/material.dart';

import 'package:calculator_app/theme.dart';
import 'package:calculator_app/widgets/widgets.dart';

class CalculatorKeyboard extends StatelessWidget {
  const CalculatorKeyboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(size.width * 0.05),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(size.width * .1),
        ),
        color: AppTheme.secondary,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                val: 'AC',
                color: AppTheme.greenButton,
              ),
              CalculatorButton(
                val: '+/-',
                color: AppTheme.greenButton,
                fontSize: 24,
              ),
              CalculatorButton(
                val: '%',
                color: AppTheme.greenButton,
                fontSize: 30,
              ),
              CalculatorButton(
                val: '÷',
                color: AppTheme.redButton,
                fontSize: 30,
              ),
            ],
          ),
          SizedBox(height: size.width * .05),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                val: '7',
              ),
              CalculatorButton(
                val: '8',
              ),
              CalculatorButton(
                val: '9',
              ),
              CalculatorButton(
                val: 'x',
                color: AppTheme.redButton,
                fontSize: 25,
              ),
            ],
          ),
          SizedBox(height: size.width * .05),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                val: '4',
              ),
              CalculatorButton(
                val: '5',
              ),
              CalculatorButton(
                val: '6',
              ),
              CalculatorButton(
                val: '-',
                color: AppTheme.redButton,
                fontSize: 45,
              ),
            ],
          ),
          SizedBox(height: size.width * .05),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                val: '1',
              ),
              CalculatorButton(
                val: '2',
              ),
              CalculatorButton(
                val: '3',
              ),
              CalculatorButton(
                val: '+',
                color: AppTheme.redButton,
                fontSize: 30,
              ),
            ],
          ),
          SizedBox(height: size.width * .05),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                val: 'C',
              ),
              CalculatorButton(
                val: '0',
              ),
              CalculatorButton(
                val: '.',
              ),
              CalculatorButton(
                val: '=',
                color: AppTheme.redButton,
                fontSize: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
