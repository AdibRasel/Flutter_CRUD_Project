import 'package:crud/Screen/Drawer.dart';
import 'package:flutter/material.dart';

class FractionalySizedBox extends StatelessWidget {
  const FractionalySizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Fractionaly Sized Box"),
      ),

      drawer: const ResponsiveDrawer(),

  body: FractionallySizedBox(
    widthFactor: 0.5, // স্ক্রিনের width হচ্ছে 1, সেই হিসাবে width হচ্ছে 0 ভাগের 5
    heightFactor: 0.7, // স্ক্রিনের height হচ্ছে 1, সেই হিসাবে width হচ্ছে 0 ভাগের 3
    child: Container(
      color: Colors.green
    ),
  ),



    );
  }
}