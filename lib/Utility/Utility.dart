
import 'package:fluttertoast/fluttertoast.dart';
import 'package:crud/Style/Style.dart'; // Ensure this file contains the color definitions

void ErrorToast(String toastText) {
  try {
    Fluttertoast.showToast(
      msg: toastText,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: colorRed, // Ensure colorRed is defined in Style.dart
      textColor: colorWhite,      // Ensure colorWhite is defined in Style.dart
      fontSize: 16.0,
    );
  } catch (e) {
    print("Error showing toast: $e");
  }
}

void SuccessToast(String toastText) {
  try {
    Fluttertoast.showToast(
      msg: toastText,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: colorGreen, // Ensure colorGreen is defined in Style.dart
      textColor: colorWhite,       // Ensure colorWhite is defined in Style.dart
      fontSize: 16.0,
    );
  } catch (e) {
    print("Error showing toast: $e");
  }
}
