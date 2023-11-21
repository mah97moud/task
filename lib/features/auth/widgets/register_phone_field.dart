import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/auth/managers/register_cubit/register_cubit.dart';

class RegisterPhoneField extends StatefulWidget {
  const RegisterPhoneField({
    super.key,
  });

  @override
  State<RegisterPhoneField> createState() => _RegisterPhoneFieldState();
}

class _RegisterPhoneFieldState extends State<RegisterPhoneField> {
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
    return TextFormField(
      controller: _phoneCtrl,
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      keyboardType: TextInputType.phone,
      textInputAction: TextInputAction.next,
      onChanged: context.read<RegisterCubit>().phoneChanged,
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
              print('Country ${country.code} and Code ${country.dialCode}');
              final registerCubit = context.read<RegisterCubit>();
              registerCubit.dialCodeChanged(dialCode);
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
