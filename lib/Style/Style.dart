
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const colorRed = Color.fromRGBO(231, 28, 36, 1);
const colorGreen = Color.fromRGBO(33, 191, 115, 1);
const colorWhite = Color.fromRGBO(255, 255, 255, 1);
const colorDarkBlue = Color.fromRGBO(44, 62, 80, 1);



InputDecoration AppInputDecoration(label){
  return InputDecoration(
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: colorGreen, width: 1),
    ),
    fillColor: colorWhite,
    filled: true,
    contentPadding: const EdgeInsets.fromLTRB(20, 10, 10, 20),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: colorWhite, width: 1),
    ),
    border: const OutlineInputBorder(),
    labelText: label, 
  );
}




ScreenBackground(context){
  return SvgPicture.asset(
    'assets/images/gptbackground.svg',
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
  );
}