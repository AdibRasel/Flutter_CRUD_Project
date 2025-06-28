import 'package:crud/Screen/Drawer.dart';
import 'package:flutter/material.dart';

class LayoutBuilders extends StatelessWidget {
  const LayoutBuilders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout Builder"),
      ),

      drawer: const ResponsiveDrawer(),


      body: LayoutBuilder(
        // builder ফাংশন, যেখানে context এবং constraints পাওয়া যায়
        builder: (BuildContext context, BoxConstraints constraints){

          // যদি স্ক্রিনের প্রস্থ 600px এর বেশি হয়
          if(constraints.maxWidth > 600){
            return Container(
              height: 400,
              width: 400,
              color: Colors.green,
              child: Text(">600"),
            );
          }else{
          // যদি স্ক্রিনের প্রস্থ 600px বা তার কম হয়
            return Container(
              height: 400,
              width: 400,
              color: Colors.blue,
              child: Text("else"),
            );
          }
        },
      )




    );
  }
}