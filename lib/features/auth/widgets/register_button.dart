import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routes/routes_names.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  context.pushNamed(
                    RoutesNames.otp,
                    queryParameters: {'otpCode': ''},
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              child: const Text('Register'),
            ),
          ),
        ],
      ),
    );
  }
}
