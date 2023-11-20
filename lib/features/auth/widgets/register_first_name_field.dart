import 'package:flutter/material.dart';

class RegisterFirstNameField extends StatelessWidget {
  const RegisterFirstNameField({
    super.key,
    required TextEditingController firstName,
  }) : _firstName = firstName;

  final TextEditingController _firstName;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _firstName,
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        hintText: 'Enter Your First Name',
        labelText: 'First Name',
      ),
    );
  }
}
