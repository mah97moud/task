import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routes/routes_names.dart';
import '../managers/login_cubit/login_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
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
            child: BlocConsumer<LoginCubit, LoginState>(
              listener: (context, state) {
                final loginStatus = state.loginStatus;
                if (loginStatus is LoginSending) {
                  showSnackBar(context, message: 'Loading');
                } else if (loginStatus is LoginSuccess) {
                  var otp = loginStatus.loginModel.otp;
                  showSnackBar(
                    context,
                    message: "${loginStatus.loginModel.message}\n"
                        "Your otp is $otp",
                  );
                  context.pushNamed(
                    RoutesNames.otp,
                    queryParameters: {
                      'otpCode': otp.toString(),
                      'phone': state.phone.toString(),
                    },
                  );
                } else if (loginStatus is LoginFailure) {
                  showSnackBar(context, message: loginStatus.message);
                }
              },
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      final registerCubit = context.read<LoginCubit>();
                      registerCubit.login();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  child: const Text('Login'),
                );
              },
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
