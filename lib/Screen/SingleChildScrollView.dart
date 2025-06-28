import 'package:crud/Screen/Drawer.dart';
import 'package:flutter/material.dart';

class SingleChildScrollViews extends StatelessWidget {
  const SingleChildScrollViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Single Child Scroll View"),
      ),

      drawer: const ResponsiveDrawer(),


      body: SingleChildScrollView(
        // Scroll করার direction হবে horizontal (ডান-বাম)
        scrollDirection: Axis.horizontal,

        // Scroll করার direction হবে vertical (উপরে-নিচে)
        // scrollDirection: Axis.vertical,

        // Scrollable widget হিসেবে একটি Row ব্যবহার করা হচ্ছে
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Row এর content center এ থাকবে

          children: [
            // প্রতিটি বক্স ২০০x২০০ সাইজের ও আলাদা রঙের
            Container(width: 200, height: 200, color: Colors.amber,),
            Container(width: 200, height: 200, color: Colors.black,),
            Container(width: 200, height: 200, color: Colors.cyan,),
            Container(width: 200, height: 200, color: Colors.deepOrange,),
            Container(width: 200, height: 200, color: Colors.green,),
            Container(width: 200, height: 200, color: Colors.indigo,),
            Container(width: 200, height: 200, color: Colors.lightGreen,),
          ],
        ),
      ),




    );
  }
}