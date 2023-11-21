import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../managers/register_cubit/register_cubit.dart';

class RegisterPasswordField extends StatefulWidget {
  const RegisterPasswordField({
    super.key,
  });

  @override
  State<RegisterPasswordField> createState() => _RegisterPasswordFieldState();
}

class _RegisterPasswordFieldState extends State<RegisterPasswordField> {
  late final TextEditingController _password;

  @override
  void initState() {
    super.initState();
    _password = TextEditingController();
  }

  @override
  void dispose() {
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _password,
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      obscureText: true,
      onChanged: context.read<RegisterCubit>().passwordChanged,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      validator: (text) {
        if (text != null) {
          if (text.isEmpty) {
            return 'password required';
          } else if (text.length < 6) {
            return 'phone number must 6 character';
          } else {
            return null;
          }
        }

        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        hintText: 'Enter Your password',
        labelText: 'Password',
      ),
    );
  }
}
