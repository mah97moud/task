import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task/core/helpers/styles_manager.dart';
import 'package:task/core/routes/routes_names.dart';
import 'package:task/features/auth/widgets/register_button.dart';
import 'package:task/features/auth/widgets/register_first_name_field.dart';
import 'package:task/features/auth/widgets/register_last_name_field.dart';
import 'package:task/features/auth/widgets/register_phone_field.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({
    super.key,
  });

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            key: _formKey,
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
                  const RegisterFirstNameField(),
                  const SizedBox(height: 20.0),
                  const RegisterLastNameField(),
                  const SizedBox(height: 20.0),
                  const RegisterPhoneField(),
                  const SizedBox(height: 40.0),
                  RegisterButton(
                    formKey: _formKey,
                  ),
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
    );
  }
}
