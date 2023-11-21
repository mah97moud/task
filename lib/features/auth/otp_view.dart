import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/app/di.dart';
import 'package:task/core/helpers/styles_manager.dart';
import 'package:task/features/auth/widgets/otp_pin.dart';
import 'package:task/features/auth/widgets/verify_button.dart';

import 'managers/verify_cubit/verify_cubit.dart';

class OtpView extends StatefulWidget {
  const OtpView({Key? key, required this.otpCode, this.phone})
      : super(key: key);

  final int? otpCode;
  final int? phone;

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  late final TextEditingController controller;
  late final FocusNode focusNode;

  @override
  void initState() {
    var otp = widget.otpCode;
    controller = TextEditingController(text: otp != null ? otp.toString() : '');
    focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerifyCubit(
        di(),
        otp: widget.otpCode.toString(),
        phone: widget.phone,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('OTP'),
        ),
        body: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              height: 20.0,
            ),
            const Text(
              'Please put otp code',
              style: StylesManager.textStyle20,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
            ),
            OtpPin(controller: controller, focusNode: focusNode),
            const SizedBox(
              height: 40.0,
            ),
            const VerifyButton(),
          ],
        ),
      ),
    );
  }
}
