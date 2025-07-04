import 'package:crud/Screen/Drawer.dart';
import 'package:flutter/material.dart';

class Flexibles extends StatelessWidget {
  const Flexibles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Flexible"),
      ),

      drawer: const ResponsiveDrawer(),




       body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: Container(color: Colors.blue)
          ),
          Flexible(
            flex: 1,
            child: Container(color: Colors.green)
          ),
          Flexible(
            flex: 4,
            child: Container(color: Colors.deepPurple)
          ),
          Flexible(
            flex: 1,
            child: Container(color: Colors.red)
          ),
          Flexible(
            flex: 2,
            child: Container(color: Colors.blueGrey)
          ),
        ],
      ),





    );
  }
}