// Flutter - সাইজ সম্পর্কিত সকল গুরুত্বপূর্ণ উপায় ও উদাহরণ

import 'package:flutter/material.dart';

class SizeExamples extends StatelessWidget {
  const SizeExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Size Examples')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ১. double.infinity - সম্পূর্ণ available সাইজ নিয়ে নেয়
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.blue,
              child: const Center(child: Text('double.infinity')),
            ),

            // ২. Fixed Size - নির্দিষ্ট width এবং height
            Container(
              width: 200,
              height: 100,
              color: Colors.red,
              child: const Center(child: Text('Fixed Size')),
            ),

            // ৩. SizedBox - নির্দিষ্ট মাপের widget তৈরি করে
            const SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(
                onPressed: null,
                child: Text('SizedBox'),
              ),
            ),

            // ৪. MediaQuery - স্ক্রিনের সাইজ অনুযায়ী dynamic সাইজ
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 80,
              color: Colors.green,
              child: const Center(child: Text('MediaQuery')),
            ),

            // ৫. Expanded - parent এর সমস্ত available space নিয়ে নেয়
            Row(
              children: [
                Expanded(
                  child: Container(height: 50, color: Colors.orange, child: const Center(child: Text('Expanded'))),
                ),
                Container(width: 100, height: 50, color: Colors.grey, child: const Center(child: Text('Fixed'))),
              ],
            ),

            // ৬. Flexible - Expanded এর মতো, তবে flex-ratio অনুযায়ী কাজ করে
            Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(height: 50, color: Colors.teal, child: const Center(child: Text('Flexible 2x'))),
                ),
                Flexible(
                  flex: 1,
                  child: Container(height: 50, color: Colors.pink, child: const Center(child: Text('Flexible 1x'))),
                ),
              ],
            ),

            // ৭. FractionallySizedBox - parent এর শতাংশ অনুযায়ী সাইজ দেয়
            FractionallySizedBox(
              widthFactor: 0.5,
              child: Container(height: 50, color: Colors.purple, child: const Center(child: Text('FractionallySizedBox'))),
            ),

            // ৮. LayoutBuilder - parent constraint অনুযায়ী responsive layout তৈরি করে
            LayoutBuilder(
              builder: (context, constraints) => Container(
                width: constraints.maxWidth * 0.6,
                height: 50,
                color: Colors.cyan,
                child: const Center(child: Text('LayoutBuilder')),
              ),
            ),

            // ৯. ConstrainedBox - নির্দিষ্ট সীমা (min/max width/height) নির্ধারণ করে
            ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 100,
                maxWidth: 200,
                minHeight: 50,
                maxHeight: 100,
              ),
              child: Container(color: Colors.brown, child: const Center(child: Text('ConstrainedBox'))),
            ),

            // ১০. IntrinsicWidth - content অনুযায়ী প্রাকৃতিক width তৈরি করে (performance heavy)
            IntrinsicWidth(
              child: Column(
                children: [
                  const Text('Intrinsic Width'),
                  ElevatedButton(onPressed: () {}, child: const Text('Button')),
                ],
              ),
            ),

            // ১১. AspectRatio - নির্দিষ্ট অনুপাত (width/height) বজায় রাখে
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(color: Colors.indigo, child: const Center(child: Text('AspectRatio'))),
            ),

            // ১২. FittedBox - child widget কে fit করায় parent এর মধ্যে
            FittedBox(
              child: Container(
                color: Colors.amber,
                child: const Text('FittedBox Large Text'),
              ),
            ),

            // ১৩. LimitedBox - unbounded parent এর মধ্যে max constraint দেয়
            LimitedBox(
              maxHeight: 100,
              child: Container(height: 200, color: Colors.lime, child: const Center(child: Text('LimitedBox'))),
            ),

            // ১৪. OverflowBox - parent এর সীমানা ছাড়িয়ে যেতে দেয়
            OverflowBox(
              maxWidth: 300,
              maxHeight: 300,
              child: Container(width: 400, height: 400, color: Colors.deepPurple, child: const Center(child: Text('OverflowBox'))),
            ),

            // ১৫. Align + widthFactor/heightFactor - alignment সহ সাইজ নির্ধারণ করে
            Align(
              alignment: Alignment.center,
              widthFactor: 2,
              heightFactor: 2,
              child: Container(width: 50, height: 50, color: Colors.black, child: const Center(child: Text('Align'))),
            ),

            // ১৬. Positioned (Stack এর মধ্যে নির্দিষ্ট অবস্থানে বসানো হয়)
            Stack(
              children: [
                Container(height: 150),
                Positioned(
                  top: 20,
                  left: 20,
                  width: 100,
                  height: 100,
                  child: Container(color: Colors.pinkAccent, child: const Center(child: Text('Positioned'))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
