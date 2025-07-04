import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

class FlutterBootstrap extends StatelessWidget {
  const FlutterBootstrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Bootstrap Examples"),
      ),
      body: BootstrapContainer(
        fluid: true, // 🔰 পুরো স্ক্রিনজুড়ে থাকবে
        children: [

          /// 🔹 Row and Column Structure (BootstrapRow & BootstrapCol)
          BootstrapRow(
            height: 100,
            children: [
              BootstrapCol(
                sizes: 'col-md-6 col-lg-4',
                child: Container(
                  color: Colors.orange,
                  child: const Center(child: Text('Column 1')),
                ),
              ),
              BootstrapCol(
                sizes: 'col-md-6 col-lg-8',
                child: Container(
                  color: Colors.green,
                  child: const Center(child: Text('Column 2')),
                ),
              ),
            ],
          ),

          /// 🔹 Offset - স্পেস দিয়ে শুরু করার জন্য
          BootstrapRow(
            height: 100,
            children: [
              BootstrapCol(
                sizes: 'col-md-4 offset-md-4', // 🔰 মাঝখানে আনবে
                child: Container(
                  color: Colors.blue,
                  child: const Center(child: Text('Centered Column')),
                ),
              ),
            ],
          ),

          /// 🔹 Responsive Breakpoints (xs, sm, md, lg, xl)
          BootstrapRow(
            height: 100,
            children: [
              BootstrapCol(
                sizes: 'col-sm-12 col-md-6 col-lg-3', // 🔰 responsive সাইজ
                child: Container(
                  color: Colors.purple,
                  child: const Center(child: Text('Responsive Box')),
                ),
              ),
            ],
          ),

          /// 🔹 Nested Rows - রো এর ভিতরে আরেকটি রো
          BootstrapRow(
            height: 200,
            children: [
              BootstrapCol(
                sizes: 'col-12',
                child: BootstrapRow(
                  height: 100,
                  children: [
                    BootstrapCol(
                      sizes: 'col-6',
                      child: Container(
                        color: Colors.teal,
                        child: const Center(child: Text('Nested 1')),
                      ),
                    ),
                    BootstrapCol(
                      sizes: 'col-6',
                      child: Container(
                        color: Colors.indigo,
                        child: const Center(child: Text('Nested 2')),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          /// 🔹 Equal Height Columns - height দিলে সব একসাথে উচ্চতায় থাকবে
          BootstrapRow(
            height: 100,
            children: [
              BootstrapCol(
                sizes: 'col-6',
                child: Container(
                  height: 100,
                  color: Colors.deepOrange,
                  child: const Center(child: Text('Equal Height 1')),
                ),
              ),
              BootstrapCol(
                sizes: 'col-6',
                child: Container(
                  height: 100,
                  color: Colors.deepPurple,
                  child: const Center(child: Text('Equal Height 2')),
                ),
              ),
            ],
          ),

          /// 🔹 Full Width Row (without fluid, padding থাকবে)
          BootstrapContainer(
            fluid: false,
            children: [
              BootstrapRow(
                children: [
                  BootstrapCol(
                    sizes: 'col-12',
                    child: Container(
                      color: Colors.grey,
                      child: const Center(child: Text('Fixed Width Container')),
                    ),
                  ),
                ],
              )
            ],
          ),

        ],
      ),
    );
  }
}