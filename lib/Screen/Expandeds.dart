import 'package:crud/Screen/Drawer.dart';
import 'package:flutter/material.dart';

class Expandeds extends StatelessWidget {
  const Expandeds({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Expanded"),
      ),

      drawer: const ResponsiveDrawer(),


      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(color: Colors.blue)
          ),
          Expanded(
            flex: 1,
            child: Container(color: Colors.green)
          ),
          Expanded(
            flex: 4,
            child: Container(color: Colors.deepPurple)
          ),
          Expanded(
            flex: 1,
            child: Container(color: Colors.red)
          ),
          Expanded(
            flex: 2,
            child: Container(color: Colors.blueGrey)
          ),
        ],
      ),



    );
  }
}