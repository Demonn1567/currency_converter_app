import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart'; //

void main() {
  runApp(const MyApp());
}

//Types of Widgets
// 1. StatelessWidget -- state immutable
// 2. StatefulWdiget -- state mutable
// 3. InheritedWidget

//State is somedata which your widget will care about.

// 1. Material Design (google)
// 2. Cupertino Design (apple)

class MyApp extends StatelessWidget  {
const MyApp({super.key});

  @override
  Widget build(BuildContext context)  {
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}