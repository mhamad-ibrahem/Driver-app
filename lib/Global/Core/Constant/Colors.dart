import 'package:flutter/material.dart';

class GlobalColors {
  static const Color white = Color.fromARGB(255, 255, 255, 255);
  static const Color black = Color.fromARGB(255, 0, 0, 0);
  static const Color red = Color.fromARGB(255, 176, 22, 11);
  static const Color green = Color(0xFF58BE3F);
}

Color getColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.purple;
  }
  return Colors.deepPurple;
}
