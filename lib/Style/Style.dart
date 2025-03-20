import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

const colorRed = Color.fromRGBO(231, 28, 36, 1);
const colorGreen = Color.fromRGBO(33, 191, 115, 1);
const colorWhite = Color.fromRGBO(255, 255, 255, 1);
const colorDarkBlue = Color.fromRGBO(44, 62, 80, 1);

// Widget ScreenBackground(BuildContext context) {
//   return SvgPicture.asset(
//     'assets/images/gptbackground.svg',
//     alignment: Alignment.center,
//     width: MediaQuery.of(context).size.width,
//     height: MediaQuery.of(context).size.height,
//     fit: BoxFit.cover,
//   );
// }

SliverGridDelegateWithFixedCrossAxisCount ProductGridViewStyle (){
  
  return const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisSpacing: 2,
    mainAxisExtent: 250,
  );

}



Widget ScreenBackground(BuildContext context) {
  return FutureBuilder<String>(
    future: rootBundle.loadString('assets/images/gptbackground.svg'),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
        return SvgPicture.string(snapshot.data!);
      } else {
        return Container(color: Colors.white); // Fallback in case of error
      }
    },
  );
}


InputDecoration AppInputDecoration(String label) {
  return InputDecoration(
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: colorGreen, width: 1),
    ),
    fillColor: colorWhite,
    filled: true,
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: colorWhite, width: 1),
    ),
    border: const OutlineInputBorder(),
    labelText: label,
    labelStyle: const TextStyle(color: Colors.black54),
  );
}

DecoratedBox AppDrropDownStyle(Widget child) {
  return DecoratedBox(
    decoration: BoxDecoration(
      color: colorWhite,
      border: Border.all(color: colorWhite, width: 1),
      borderRadius: BorderRadius.circular(5),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: child,
    ),
  );
}

ButtonStyle AppButtonStyle() {
  return ElevatedButton.styleFrom(
    elevation: 1,
    padding: EdgeInsets.zero,
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
  );
}

Ink SuccessButtonChild(String buttonText) {
  return Ink(
    decoration: BoxDecoration(
      color: colorGreen,
      borderRadius: BorderRadius.circular(6),
    ),
    child: Container(
      height: 45,
      alignment: Alignment.center,
      child: Text(
        buttonText,
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 15,
        ),
      ),
    ),
  );
}