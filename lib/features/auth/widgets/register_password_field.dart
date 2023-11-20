import 'package:flutter/material.dart';

class RegisterPasswordField extends StatelessWidget {
  const RegisterPasswordField({
    super.key,
    required TextEditingController password,
  }) : _password = password;

  final TextEditingController _password;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _password,
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      obscureText: true,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      decoration: const InputDecoration(
        hintText: 'Enter Your password',
        labelText: 'Password',
      ),
    );
  }
}
