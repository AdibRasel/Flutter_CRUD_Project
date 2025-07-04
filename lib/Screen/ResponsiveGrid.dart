import 'package:crud/Screen/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ResponsiveGrids extends StatelessWidget {
  const ResponsiveGrids({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive Grid"),
      ),
      drawer: const ResponsiveDrawer(),


      // responsive_grid: ^2.4.4 install korte hobe.
      // import 'package:responsive_grid/responsive_grid.dart'; import korte hobe
      body: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            md: 4,
            child: Container(
              height: 100,
              color: Colors.orange,
            ),
          ),
          ResponsiveGridCol(
            md: 4,
            child: Container(
              height: 100,
              color: Colors.blue,
            ),
          ),
          ResponsiveGridCol(
            md: 4,
            child: Container(
              height: 100,
              color: Colors.green,
            ),
          ),
        ]
      ),

    );
  }
}