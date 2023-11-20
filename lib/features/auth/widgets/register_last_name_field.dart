import 'package:flutter/material.dart';

class RegisterLastNameField extends StatelessWidget {
  const RegisterLastNameField({
    super.key,
    required TextEditingController lastName,
  }) : _lastName = lastName;

  final TextEditingController _lastName;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _lastName,
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        hintText: 'Enter Your Last Name',
        labelText: 'Last Name',
      ),
    );
  }
}
