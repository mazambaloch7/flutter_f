import 'package:flutter/cupertino.dart';

class ProviderCounter   with ChangeNotifier{

  int counter = 0 ;

  int get count => count;

  void setCounter(){
    counter++;
    notifyListeners();
  }

}