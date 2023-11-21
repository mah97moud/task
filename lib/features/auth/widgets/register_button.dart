import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task/features/auth/managers/register_cubit/register_cubit.dart';

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
            child: BlocListener<RegisterCubit, RegisterState>(
              listener: (context, state) {
                final registerStatus = state.registerStatus;
                if (registerStatus is RegisterSending) {
                  showSnackBar(context, message: 'Loading');
                } else if (registerStatus is RegisterSuccess) {
                  var otp = registerStatus.registerModel.otp;
                  showSnackBar(
                    context,
                    message: "${registerStatus.registerModel.message}\n"
                    "Your otp is $otp",
                  );
                  context.pushNamed(
                      RoutesNames.otp,
                      queryParameters: {'otpCode': otp.toString()},
                    );
                } else if (registerStatus is RegisterFailure) {
                  showSnackBar(context, message: registerStatus.message);
                }
              },
              child: ElevatedButton(
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    final registerCubit = context.read<RegisterCubit>();
                    registerCubit.register();
                    
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                child: const Text('Register'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showSnackBar(
    BuildContext context, {
    required String message,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
