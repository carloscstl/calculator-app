import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:calculator_app/theme.dart';
import 'package:calculator_app/provider.dart';

class Display extends StatelessWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CalculatorProvider>(context, listen: true);
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(right: size.width*0.05),
          alignment: const Alignment(1, 1),
          child: const Text(
            '123',
            style: TextStyle(
              fontSize: 35,
              color: AppTheme.white,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(size.width * .05),
          alignment: const Alignment(1, 0),
          child: Text(
            provider.display,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 45,
              color: AppTheme.white,
            ),
          ),
        ),
      ],
    );
  }
}