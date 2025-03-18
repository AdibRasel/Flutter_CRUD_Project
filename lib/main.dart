import 'package:flutter/material.dart';
import 'package:crud/Style/Style.dart';
import 'Screen/ProductCreateScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CRUD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductCreateScreen(),
    );
  }
}