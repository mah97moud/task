import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/auth/managers/login_cubit/login_cubit.dart';

class LoginPhoneField extends StatefulWidget {
  const LoginPhoneField({
    super.key,
  });

  @override
  State<LoginPhoneField> createState() => _LoginPhoneFieldState();
}

class _LoginPhoneFieldState extends State<LoginPhoneField> {
  late final TextEditingController _phoneCtrl;

  @override
  void initState() {
    super.initState();
    _phoneCtrl = TextEditingController();
  }

  @override
  void dispose() {
    _phoneCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    return TextFormField(
      controller: _phoneCtrl,
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      keyboardType: TextInputType.phone,
      textInputAction: TextInputAction.next,
      onChanged: loginCubit.phoneChanged,
      validator: (text) {
        if (text != null) {
          if (text.isEmpty) {
            return 'phone number required';
          } else if (text.startsWith('0')) {
            return 'phone number must not start with 0, please remove it';
          } else if (text.length < 10) {
            return 'phone number must 10 number';
          } else {
            return null;
          }
        }

        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          hintText: 'Enter Phone Number',
          labelText: 'Phone',
          prefixIcon: CountryCodePicker(
            onChanged: (country) {
              final dialCode = country.dialCode;

              loginCubit.dialCodeChanged(dialCode);
            },
            padding: EdgeInsets.zero,

            // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
            initialSelection: 'EG',
            favorite: const ['+20', 'EG'],
            showCountryOnly: false,
            showOnlyCountryWhenClosed: false,
            alignLeft: false,
          )),
    );
  }
}
