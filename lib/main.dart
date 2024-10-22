import 'package:flutter/material.dart';
import 'favorites.dart';
import 'home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Favorites(),
    child: const MaterialApp(
      home: HomePage(),
    ),
  ));
}