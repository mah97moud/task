import 'package:flutter/material.dart';
import 'package:task/core/helpers/styles_manager.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Welcome Back ',
          style: StylesManager.textStyle24,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Login',
          style: StylesManager.textStyle24,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 50.0,
        ),
      ],
    );
  }
}
