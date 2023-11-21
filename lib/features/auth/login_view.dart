import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task/core/routes/routes_names.dart';
import 'package:task/features/auth/widgets/login_button.dart';
import 'package:task/features/auth/widgets/login_password_field.dart';
import 'package:task/features/auth/widgets/login_phone_field.dart';
import 'package:task/features/auth/widgets/welcom_message.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late TextEditingController _phoneCtrl;
  late TextEditingController _password;

  @override
  void initState() {
    super.initState();
    _phoneCtrl = TextEditingController();
    _password = TextEditingController();
  }

  @override
  void dispose() {
    _phoneCtrl.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Form(
              child: Column(
                children: [
                  const WelcomeMessage(),
                  LoginPhoneField(phoneCtrl: _phoneCtrl),
                  const SizedBox(height: 20.0),
                  LoginPasswordField(password: _password),
                  const SizedBox(height: 40.0),
                  const LoginButton(),
                ],
              ),
            ),
            const Spacer(),
            const Text('Don\'t have an account?'),
            TextButton(
              onPressed: () {
                context.pushNamed(RoutesNames.register);
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
