import 'package:flutter/material.dart';

class JokeModell with ChangeNotifier {
  int counter =0;
  void increase(){
    counter++;
    notifyListeners();
  }
  void decrease(){
    if(counter>0) counter--;
    notifyListeners();
  }
  void reset(){
    counter=0;
    notifyListeners();
  }

}