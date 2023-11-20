import 'package:flutter/material.dart';
import 'package:task/core/app/data/requests/register_request.dart';
import 'package:task/features/auth/repository/auth_repostiory.dart';

import '../../../core/app/di.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () async {
                final repo = di<AuthRepository>();
                final register = await repo.register(const RegisterRequest(
                  dialCode: 20,
                  identity: "12",
                  firstName: "test",
                  lastName: "1",
                  phone: 1012345678,
                ));
                print('register');
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
