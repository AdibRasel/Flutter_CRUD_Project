import 'package:crud/Screen/Drawer.dart';
import 'package:crud/Screen/style.dart';
import 'package:flutter/material.dart';

class MediaQuerys extends StatelessWidget {
  const MediaQuerys({super.key});

  @override
  Widget build(BuildContext context) {
    // 📐 MediaQuery variables
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var orientation = MediaQuery.of(context).orientation;
    var padding = MediaQuery.of(context).padding;
    var brightness = MediaQuery.of(context).platformBrightness;
    var dpr = MediaQuery.of(context).devicePixelRatio;
    var viewInsets = MediaQuery.of(context).viewInsets;
    var viewPadding = MediaQuery.of(context).viewPadding;
    var aspectRatio = MediaQuery.of(context).size.aspectRatio;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Media Query Full Demo"),
      ),
      drawer: const ResponsiveDrawer(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("📏 Screen Width: ${width.toStringAsFixed(2)}", style: HeadLine(context)),
              Text("📐 Screen Height: ${height.toStringAsFixed(2)}", style: HeadLine(context)),
              Text("🔁 Orientation: $orientation", style: HeadLine(context)),
              Text("🧭 Device Pixel Ratio (DPI): $dpr", style: HeadLine(context)),
              Text("📐 Aspect Ratio: ${aspectRatio.toStringAsFixed(2)}", style: HeadLine(context)),
              const SizedBox(height: 20),

              Text("🧊 View Padding (Top): ${viewPadding.top}", style: HeadLine(context)),
              Text("📲 Safe Padding (Top): ${padding.top}", style: HeadLine(context)),
              Text("⌨️ Keyboard Inset Bottom: ${viewInsets.bottom}", style: HeadLine(context)),
              Text("🌙 Brightness (Theme): $brightness", style: HeadLine(context)),

              const SizedBox(height: 30),

              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Click to test keyboard",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
