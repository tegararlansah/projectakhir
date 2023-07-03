import 'package:flutter/widgets.dart';
import 'package:uts_flutter2/models/drink.dart';

class BubbleTeaShop extends ChangeNotifier {
  // list drink
  final List<Drink> _shop = [
    Drink(
        name: "Bubble Tea Original",
        price: "8k",
        imagePath: "lib/images/bubbletea.png")
  ];
  // list drink cart
  final List<Drink> _userCart = [];

  // get drink
  List<Drink> get shop => _shop;

  // get user cart
  List<Drink> get cart => _userCart;

  // add drink
  void addToCart(Drink drink) {
    _userCart.add(drink);
    notifyListeners();
  }

  // remove drink
  void removeFromCart(Drink drink) {
    _userCart.remove(drink);
    notifyListeners();
  }
}
