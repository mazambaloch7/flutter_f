import 'package:flutter/material.dart';

class FavouriteProvider with ChangeNotifier{

  List<int> _selectedItem = [];

  List<int> get sekectedItem => _selectedItem;
  void addItem(int value){
    _selectedItem.add(value);
notifyListeners();
  }

  void RemoveItem(int value){
    _selectedItem.remove(value);
notifyListeners();
  }
}