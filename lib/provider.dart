import 'package:flutter/material.dart';

class CalculatorProvider extends ChangeNotifier{


  String display = '';

  void click(String val){
    if( val == 'AC'){
      display = '';
      notifyListeners();
    }else if(val == '+'){
      int num1 = int.parse(display);
      display += '+';
      notifyListeners();
    }
    else {
      display += val;
      notifyListeners();
    }
  }
  
}