import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/app/di.dart';
import 'package:task/features/auth/widgets/register_view_body.dart';

import 'managers/register_cubit/register_cubit.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {

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
      create: (context) => RegisterCubit(
        di(),
      ),
      child: const Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: RegisterViewBody(
          ),
        ),
      ),
    );
  }
}
