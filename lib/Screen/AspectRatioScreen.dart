import 'package:crud/Screen/Drawer.dart';
import 'package:flutter/material.dart';

class AspectRatioScreen extends StatelessWidget {
  const AspectRatioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Aspct Ratio"),
      ),

      drawer: const ResponsiveDrawer(),


      body: Container( 
        width: double.infinity, // কনটেইনারের প্রস্থ পুরো স্ক্রিন জুড়ে হবে
        height: 300, 
        color: Colors.red, 
        alignment: Alignment.center, // ভিতরের চাইল্ডকে (AspectRatio) মাঝখানে সেন্টার করে রাখবে

        child: AspectRatio( // AspectRatio দিয়ে ভিতরের কনটেইনারকে একটি নির্দিষ্ট অনুপাত অনুযায়ী কনস্ট্রেইন করা হয়েছে
          // প্রস্থ:উচ্চতা = 12:2 (মানে 6:1 অনুপাত হবে)
          // Width = 12 অংশ,  Height = 2 অংশ
          aspectRatio: 12 / 2, // প্রস্থ:উচ্চতা = 12:2 (মানে 6:1 অনুপাত হবে)
          
          child: Container( 
            color: Colors.green,
            child: Text("AspecRatio"), 
          ),
        ),
      ),



    );
  }
}