import 'package:flutter/material.dart';

class AppStyles {
  static const TextStyle titleStyle = TextStyle(
    fontFamily: 'AmsiPro-Ultra',
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 145, 39, 120),
  );

  static const TextStyle normalTextStyle = TextStyle(
    fontFamily: 'AmsiPro-Regular',
    fontSize: 10,
    color: Colors.black,
  );

  static ButtonStyle emergencyButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Color.fromRGBO(255, 190, 26, 1),
    foregroundColor: Color(0xFF8E24AA),
    padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8), // Cambiado a no-const
    ),
  );
}
