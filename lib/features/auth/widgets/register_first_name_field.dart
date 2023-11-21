import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../managers/register_cubit/register_cubit.dart';

class RegisterFirstNameField extends StatefulWidget {
  const RegisterFirstNameField({
    super.key,
  });

  @override
  State<RegisterFirstNameField> createState() => _RegisterFirstNameFieldState();
}

class _RegisterFirstNameFieldState extends State<RegisterFirstNameField> {
  late final TextEditingController _firstName;

  @override
  void initState() {
    super.initState();
    _firstName = TextEditingController();
  }

  @override
  void dispose() {
    _firstName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _firstName,
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      onChanged: context.read<RegisterCubit>().firstNameChanged,
      keyboardType: TextInputType.text,
      validator: (text) {
        if (text != null && text.isEmpty) {
          return 'first name required';
        }
        return null;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        hintText: 'Enter Your First Name',
        labelText: 'First Name',
      ),
    );
  }
}
