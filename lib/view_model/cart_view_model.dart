import 'package:flutter/material.dart';

import '../service/dummy_data_service.dart';
import '/model/cart_item.dart';

class CartViewModel extends ChangeNotifier {
  void addToCart(CartItem cartItem) {
    dummyCartItems.add(cartItem);
    notifyListeners();
  }

  void removeFromCart(CartItem removalItem) {
    dummyCartItems.remove(removalItem);
    notifyListeners();
  }

  List<CartItem> getAllItems() {
    return dummyCartItems;
  }
}
