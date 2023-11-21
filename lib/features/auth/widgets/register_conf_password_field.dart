import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../managers/register_cubit/register_cubit.dart';

class RegisterConfPasswordField extends StatefulWidget {
  const RegisterConfPasswordField({
    super.key,
  });

  @override
  State<RegisterConfPasswordField> createState() =>
      _RegisterConfPasswordFieldState();
}

class _RegisterConfPasswordFieldState extends State<RegisterConfPasswordField> {
  late final TextEditingController _confPassword;

  @override
  void initState() {
    super.initState();
    _confPassword = TextEditingController();
  }

  @override
  void dispose() {
    _confPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        return TextFormField(
          controller: _confPassword,
          onTapOutside: (event) {
            FocusScope.of(context).unfocus();
          },
          obscureText: true,
          onChanged: context.read<RegisterCubit>().confPasswordChanged,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          validator: (text) {
            if (text != null) {
              if (text.isEmpty) {
                return 'confirm password required';
              } else if (text.length < 6) {
                return 'phone number must 6 character';
              } else if (text != state.password) {
                return 'confirm password not match password';
              } else {
                return null;
              }
            }

            return null;
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: const InputDecoration(
            hintText: 'Enter Your password',
            labelText: 'Confirm Password',
          ),
        );
      },
    );
  }
}
