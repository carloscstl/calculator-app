import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:calculator_app/provider.dart';
import 'package:calculator_app/theme.dart';

class CalculatorButton extends StatelessWidget {

  CalculatorButton({
    Key? key,
    this.color,
    this.fontSize,
    required this.val,
  }) : super(key: key);

  final String val;
  Color? color;
  double? fontSize;

  @override
  Widget build(BuildContext context) {

    final prov = Provider.of<CalculatorProvider>(context);

    final size = MediaQuery.of(context).size;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(size.width*0.18, size.width*0.18),
        elevation: 0,
        primary: AppTheme.colorButton,
      ),
      onPressed: (){
        prov.click(val);
      },
      child: Text(
        val,
        style: TextStyle(
          color: color??AppTheme.white,
          fontSize: fontSize??24,
        ),
      ),
    );
  }
}
