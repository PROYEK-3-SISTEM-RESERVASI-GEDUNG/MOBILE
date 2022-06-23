import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/pui jtb_1.png",
      // "assets/images/pui jtb_2.png",
      // "assets/images/pui jtb_3.png",
      // "assets/images/pui jtb_4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gedung PUI Jatibarang™",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/pgri.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Aula PGRI Indramayu",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/bumi patra.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gedung Bumi Patra Indramayu",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/Abral.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gedung Serbaguna Abral",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  
];

const String description =
    "Gedung serbaguna cocok untuk acara seperti pernikahan, wisuda, rapat, dll. Tempat lumayan strategis. Terdapat tempat parkir motor dan mobil yg digabung namun tidak ada penutup di area parkir. Lumayan panas ketika siang, angin diluar gedung cukup kencang pas untuk yg ingin mencari udara. Toilet ada 8 yang dipisah, dan ada saty mushola yg terlaly kecil, hanya bisa untuk 1 shof jika jamaah, disediakan pula alat alat sholat seperti mukena dan sajadah …";
