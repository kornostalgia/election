
import 'package:korelectioninfo/cost/product.dart';

class ProductItem {
  int quantity;
  final Product? product;

  ProductItem({this.quantity = 1, required this.product});

  void increment() {
    quantity++;
  }

  void decrement() {
    quantity--;
  }

// void add() {}

// void substract() {}
}