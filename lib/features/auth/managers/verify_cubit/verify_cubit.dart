import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task/core/app/data/models/verify_model/verify_model.dart';
import 'package:task/core/app/data/requests/verfiy_request.dart';
import 'package:task/core/helpers/type_helper.dart';
import 'package:task/core/resources/constants.dart';

import '../../../../core/helpers/utiles.dart';
import '../../repository/auth_repository.dart';

part 'verify_state.dart';

class VerifyCubit extends Cubit<VerifyState> {
  VerifyCubit(
    this._authRepository, {
    this.otp,
    this.phone,
  }) : super(VerifyInitial());

  final AuthRepository _authRepository;
  final String? otp;
  final int? phone;

  Future<void> verify() async {
    final identity = await Utils.deviceId;

    final request = VerifyRequest(
      fcmToken: fcmToken,
      identity: identity,
      otp: otp,
      phone: phone,
    );
    emit(VerifySending());

    final result = await _authRepository.verify(request);

    result.fold(
      (value) => emit(VerifySuccess(verifyModel: value)),
      (message) => emit(VerifyFailure(message: message)),
    );
  }
}
