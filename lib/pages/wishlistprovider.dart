import 'package:car_wash/model/service.dart';
import 'package:flutter/material.dart';

class wishlistprovider extends ChangeNotifier {
  List<Service> _items = [];
  double _totalPrice = 0.0;

  void add(Service item) {
    _items.add(item);
    _totalPrice += item.price;
    notifyListeners();
  }

  void remove(Service item) {
    _totalPrice -= item.price;
    _items.remove(item);
    notifyListeners();
  }

  int get count {
    return _items.length;
  }

  double get totalPrice {
    return _totalPrice;
  }

  List<Service> get wishItems {
    return _items;
  }
}