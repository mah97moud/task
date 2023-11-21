import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:task/core/helpers/color_manager.dart';
import 'package:task/core/helpers/styles_manager.dart';

class OtpPin extends StatelessWidget {
  const OtpPin({
    super.key,
    required this.controller,
    required this.focusNode,
  });

  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      child: Pinput(
        length: 4,
        controller: controller,
        focusNode: focusNode,
        defaultPinTheme: StylesManager.defaultPinTheme,
        onCompleted: (pin) {},
        focusedPinTheme: StylesManager.defaultPinTheme.copyWith(
          height: 68,
          width: 64,
          decoration: StylesManager.defaultPinTheme.decoration!.copyWith(
            border: Border.all(color: ColorMananger.primary),
          ),
        ),
        errorPinTheme: StylesManager.defaultPinTheme.copyWith(
          decoration: BoxDecoration(
            color: ColorMananger.redColor,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
