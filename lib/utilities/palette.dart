//palette.dart
import 'package:flutter/material.dart';
class Palette {
  static const MaterialColor kToDark = const MaterialColor(
    0xff195860, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xff174f56 ),//10%
      100: const Color(0xff14464d),//20%
      200: const Color(0xff123e43),//30%
      300: const Color(0xff0f353a),//40%
      400: const Color(0xff0d2c30),//50%
      500: const Color(0xff0a2326),//60%
      600: const Color(0xff071a1d),//70%
      700: const Color(0xff051213),//80%
      800: const Color(0xff02090a),//90%
      900: const Color(0xff000000),//100%
    },
  );
} // you can