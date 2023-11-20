import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task/core/routes/routes_names.dart';
import 'package:task/features/auth/widgets/register_button.dart';
import 'package:task/features/auth/widgets/register_first_name_field.dart';
import 'package:task/features/auth/widgets/register_last_name_field.dart';
import 'package:task/features/auth/widgets/register_password_field.dart';
import 'package:task/features/auth/widgets/register_phone_field.dart';

import '../../core/helpers/styles_manager.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late TextEditingController _phoneCtrl;
  late TextEditingController _firstNameCtrl;
  late TextEditingController _lastNameCtrl;
  late TextEditingController _password;

  @override
  void initState() {
    super.initState();
    _firstNameCtrl = TextEditingController();
    _lastNameCtrl = TextEditingController();
    _phoneCtrl = TextEditingController();
    _password = TextEditingController();
  }

  @override
  void dispose() {
    _firstNameCtrl.dispose();
    _lastNameCtrl.dispose();
    _phoneCtrl.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                child: SafeArea(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.15,
                      ),
                      const Text(
                        'Register ',
                        style: StylesManager.textStyle24,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      RegisterFirstNameField(firstName: _firstNameCtrl),
                      const SizedBox(height: 20.0),
                      RegisterLastNameField(lastName: _firstNameCtrl),
                      const SizedBox(height: 20.0),
                      RegisterPhoneField(phoneCtrl: _phoneCtrl),
                      const SizedBox(height: 20.0),
                      RegisterPasswordField(password: _password),
                      const SizedBox(height: 40.0),
                      const RegisterButton(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.15,
              ),
              const Text('Have an account!'),
              TextButton(
                onPressed: () {
                  context.goNamed(RoutesNames.login);
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
