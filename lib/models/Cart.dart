// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'Product.dart';

class Cart {
  final Product product;
  final int numOfItems;

  Cart({required this.product, required this.numOfItems});
}

// Demo data for the Cart
List<Cart> demoCarts = [
  Cart(product: demoProducts[0], numOfItems: 3),
  Cart(product: demoProducts[1], numOfItems: 2),
  Cart(product: demoProducts[2], numOfItems: 1)
];
