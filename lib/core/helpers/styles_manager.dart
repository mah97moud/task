import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:task/core/helpers/color_manager.dart';

class StylesManager {
  StylesManager._();

  static const TextStyle textStyle8 = TextStyle(
    fontSize: 8.0,
  );
  static const TextStyle textStyle10 = TextStyle(
    fontSize: 10.0,
  );
  static const TextStyle textStyle12 = TextStyle(
    fontSize: 12.0,
  );
  static const TextStyle textStyle14 = TextStyle(
    fontSize: 14.0,
  );
  static const TextStyle textStyle16 = TextStyle(
    fontSize: 16.0,
  );
  static const TextStyle textStyle18 = TextStyle(
    fontSize: 18.0,
  );
  static const TextStyle textStyle20 = TextStyle(
    fontSize: 20.0,
  );
  static const TextStyle textStyle22 = TextStyle(
    fontSize: 22.0,
  );
  static const TextStyle textStyle24 = TextStyle(
    fontSize: 24.0,
  );

  static PinTheme defaultPinTheme = PinTheme(
    width: 56,
    height: 60,
    textStyle: textStyle22,
    decoration: BoxDecoration(
      color: ColorMananger.fillColor,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.transparent),
    ),
  );
}
