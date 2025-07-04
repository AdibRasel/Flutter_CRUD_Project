import 'package:flutter/material.dart';

TextStyle HeadLine(BuildContext context) {
  double width = MediaQuery.of(context).size.width;

  if (width < 500) {
    // 📱 Mobile Style
    return const TextStyle(
      color: Colors.green,
      fontSize: 34,
      fontWeight: FontWeight.bold,
    );
  } else {
    // 💻 Tablet or Desktop Style
    return const TextStyle(
      color: Colors.black,
      fontSize: 65,
      fontWeight: FontWeight.bold,
    );
  }
}
