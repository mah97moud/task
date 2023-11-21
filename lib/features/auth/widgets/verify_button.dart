import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task/core/routes/routes_names.dart';

import '../managers/verify_cubit/verify_cubit.dart';

class VerifyButton extends StatelessWidget {
  const VerifyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: BlocConsumer<VerifyCubit, VerifyState>(
        listener: (context, state) {
          if (state is VerifySending) {
            showSnackBar(context, message: 'Loading');
          } else if (state is VerifySuccess) {
            showSnackBar(
              context,
              message: "${state.verifyModel.message} ",
            );
            context.goNamed(RoutesNames.home);
          } else if (state is VerifyFailure) {
            showSnackBar(context, message: state.message);
          }
        },
        builder: (context, state) {
          return ElevatedButton(
            onPressed: () {
              final verifyCubit = context.read<VerifyCubit>();
              verifyCubit.verify();
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
            ),
            child: const Text('Verify'),
          );
        },
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
