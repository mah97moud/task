import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class RegisterPhoneField extends StatelessWidget {
  const RegisterPhoneField({
    super.key,
    required TextEditingController phoneCtrl,
  }) : _phoneCtrl = phoneCtrl;

  final TextEditingController _phoneCtrl;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _phoneCtrl,
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      keyboardType: TextInputType.phone,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          hintText: 'Enter Phone Number',
          labelText: 'Phone',
          prefixIcon: CountryCodePicker(
            onChanged: (country) {
              print('Country ${country.code} and Code ${country.dialCode}');
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
