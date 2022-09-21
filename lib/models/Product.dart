// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Product {
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavorite, isPopular;

  Product({
    required this.title,
    required this.description,
    required this.images,
    required this.colors,
    required this.price,
    this.rating = 0.0,
    this.isFavorite = false,
    this.isPopular = false,
  });
}

List<Product> demoProducts = [
  Product(
      title: "Wireless Controller for PS4",
      description: description[0],
      images: ["assets/images/game_pad.png", "assets/images/game_pad_3.png"],
      colors: const [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white
      ],
      price: 64.99,
      isFavorite: true,
      isPopular: true,
      rating: 4.9),
  Product(
      title: "White Sports - Man Pants",
      description: description[1],
      images: [
        "assets/images/white_shorts.png",
        "assets/images/white_shorts_1.png",
      ],
      colors: const [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white
      ],
      price: 50.10,
      isPopular: true,
      rating: 4.0),
  Product(
      title: "Gloves XC Omega",
      description: description[2],
      images: [
        "assets/images/gloves.png",
        "assets/images/gloves_1.png",
      ],
      colors: const [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white
      ],
      price: 35.50,
      isPopular: true,
      isFavorite: true,
      rating: 3.5),
  // Product(
  //     title: "Drey-Beats HeadPhones",
  //     description: description[3],
  //     images: ["assets/images/headset.png"],
  //     colors: const [
  //       Color(0xFFF6625E),
  //       Color(0xFF836DB8),
  //       Color(0xFFDECB9C),
  //       Colors.white
  //     ],
  //     price: 45.50,
  //     isPopular: true,
  //     rating: 4.1),
];

List<String> description = [
  "Wireless Controller for PS4 gives you precision in your gaming, with built-in sensitive accelerometer and gryoscope to detect motion",
  "Slim-Fit white sports shorts available on all sizes, made from soft cotton rich material with an elastic waist band for comfort.",
  "Warm and Cozy Omega gloves available in multiple color and different sizes, with a breathable but protective upper and a neoprene sleeve, ",
  "Beats by Drey wireless headphones offering top quality listening experience"
];
