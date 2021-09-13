import 'package:flutter/cupertino.dart';

class ButtonProvider extends ChangeNotifier {
  int _tabIndex = 0;
  int _cartAmount = 0;

  int get tabIndex => _tabIndex;
  int get cartAmount => _cartAmount;

  void changeTabIndex(int index) {
    _tabIndex = index;
    notifyListeners();
  }

  void addCartAmount(int amount) {
    _cartAmount += amount;
    notifyListeners();
  }

  void removeCartAmount() {
    _cartAmount--;
    notifyListeners();
  }
}
