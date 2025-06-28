import 'package:crud/Screen/AspectRatioScreen.dart';
import 'package:crud/Screen/FractionalySizedBox.dart';
import 'package:crud/Screen/LayoutBuilder.dart';
import 'package:crud/Screen/ProductGridViewScreen.dart';
import 'package:crud/Screen/SingleChildScrollView.dart';
import 'package:flutter/material.dart';

// এখানে তোমার সব পেজ ইম্পোর্ট করতে হবে


class ResponsiveDrawer extends StatelessWidget {
  const ResponsiveDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Responsive and Adaptive Applications in Flutter"),
            accountEmail: Text(""),
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.flutter_dash),
            ),
          ),

          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const ProductGridViewScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.phone_android),
            title: const Text("Aspect Ratio"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const AspectRatioScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.view_quilt),
            title: const Text("Fractionaly Sized Box"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const FractionalySizedBox()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.aspect_ratio),
            title: const Text("Layout Builder"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const LayoutBuilders()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.dashboard_customize),
            title: const Text("Single Child Scroll View"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const SingleChildScrollViews()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.web),
            title: const Text("Web & Desktop Responsiveness"),
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (_) => const WebResponsivePage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings_ethernet),
            title: const Text("Breakpoints Design"),
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (_) => const BreakpointsPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.screen_search_desktop),
            title: const Text("Responsive Grid Layouts"),
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (_) => const GridLayoutPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Custom Responsive Utilities"),
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (_) => const ResponsiveUtilsPage()));
            },
          ),
        ],
      ),
    );
  }
}
