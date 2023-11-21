import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task/core/routes/routes_names.dart';
import 'package:task/features/auth/widgets/login_button.dart';
import 'package:task/features/auth/widgets/login_phone_field.dart';
import 'package:task/features/auth/widgets/welcome_message.dart';

import '../../core/app/di.dart';
import 'managers/login_cubit/login_cubit.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(di()),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    const WelcomeMessage(),
                    const LoginPhoneField(),
                    const SizedBox(height: 40.0),
                    LoginButton(
                      formKey: _formKey,
                    ),
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
      ),
    );
  }
}
