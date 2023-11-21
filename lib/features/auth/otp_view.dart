import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:task/core/helpers/color_manager.dart';
import 'package:task/core/helpers/styles_manager.dart';
import 'package:task/features/auth/widgets/verify_button.dart';

class OtpView extends StatefulWidget {
  const OtpView({Key? key, required this.otpCode}) : super(key: key);

  final int? otpCode;

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  late final TextEditingController controller;
  late final FocusNode focusNode;

  @override
  void initState() {
    var otp = widget.otpCode;
    controller = TextEditingController(text: otp !=null ? otp.toString(): '');
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
    return Scaffold(
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

          const SizedBox(height: 20.0,),
          SizedBox(
            height: 68,
            child: Pinput(
              length: 4,
              controller: controller,
              focusNode: focusNode,
              defaultPinTheme: StylesManager.defaultPinTheme,
              onCompleted: (pin) {},
              focusedPinTheme: StylesManager.defaultPinTheme.copyWith(
                height: 68,
                width: 64,
                decoration: StylesManager.defaultPinTheme.decoration!.copyWith(
                  border: Border.all(color: ColorMananger.primary),
                ),
              ),
              errorPinTheme: StylesManager.defaultPinTheme.copyWith(
                decoration: BoxDecoration(
                  color: ColorMananger.redColor,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          const SizedBox(height: 40.0,),

          const VerifyButton(),
        ],
      ),
    );
  }
}
