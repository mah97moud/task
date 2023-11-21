import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/auth/managers/register_cubit/register_cubit.dart';

class RegisterLastNameField extends StatefulWidget {
  const RegisterLastNameField({
    super.key,
  });

  @override
  State<RegisterLastNameField> createState() => _RegisterLastNameFieldState();
}

class _RegisterLastNameFieldState extends State<RegisterLastNameField> {
  late final TextEditingController _lastName;

  @override
  void initState() {
    super.initState();
    _lastName = TextEditingController();
  }

  @override
  void dispose() {
    _lastName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _lastName,
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      keyboardType: TextInputType.text,
      onChanged: context.read<RegisterCubit>().lastNameChanged,
      validator: (text) {
        if (text != null && text.isEmpty) {
          return 'last name required';
        }
        return null;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        hintText: 'Enter Your Last Name',
        labelText: 'Last Name',
      ),
    );
  }
}
