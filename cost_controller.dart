import 'package:flutter/material.dart';
import 'package:korelectioninfo/cost/product.dart';
import 'package:korelectioninfo/cost/product_item.dart';

enum CostState { normal, cart }

class CostController extends ChangeNotifier {
  CostState costState = CostState.normal;

  List<ProductItem> cart = [];

  void changeCostState(CostState state) {
    costState = state;
    notifyListeners();
  }

  void addProductToCart(Product product) {
    for (ProductItem item in cart) {
      if (item.product!.title == product.title) {
        item.increment();
        notifyListeners();
        return;
      }
    }
    cart.add(ProductItem(product: product));
    notifyListeners();
  }

  int totalCartItems() => cart.fold(
      0, (previousValue, element) => previousValue + element.quantity);
}