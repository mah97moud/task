import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task/core/app/data/models/register_model/register_model.dart';
import 'package:task/core/app/data/requests/register_request.dart';
import 'package:task/core/helpers/type_helper.dart';
import 'package:task/features/auth/repository/auth_repository.dart';

import '../../../../core/helpers/utiles.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this._authRepository) : super(const RegisterState());

  final AuthRepository _authRepository;

  void firstNameChanged(String? firstName) {
    emit(state.copyWith(firstName: firstName));
  }

  void lastNameChanged(String? lastName) {
    emit(state.copyWith(lastName: lastName));
  }

  void dialCodeChanged(String? code) {
    if (code != null && code.startsWith('0')) {
      final dialCode = int.tryParse(code.replaceFirst('0', ''));
      emit(state.copyWith(dialCode: dialCode));
    } else {
      final dialCode = int.tryParse(code ?? '20');
      emit(state.copyWith(dialCode: dialCode));
    }
  }

  void phoneChanged(String? phone) {
    if (phone != null && phone.startsWith('0')) {
      final value = int.tryParse(phone.replaceFirst('0', ''));
      emit(state.copyWith(phone: value));
    } else {
      final value = int.tryParse(phone ?? '0');
      emit(state.copyWith(phone: value));
    }
  }

  Future<void> register() async {
    final identity = await Utils.deviceId;
    final request = RegisterRequest(
      firstName: state.firstName,
      lastName: state.lastName,
      dialCode: state.dialCode,
      phone: state.phone,
      identity: identity,
    );
    emit(state.copyWith(registerStatus: const RegisterSending()));

    final result = await _authRepository.register(request);
    //Todo: otp number is 4391

    result.fold(
      (value) => emit(
        RegisterState(
          registerStatus: RegisterSuccess(registerModel: value),
        ),
      ),
      (message) => emit(
        state.copyWith(
          registerStatus: RegisterFailure(message: message),
        ),
      ),
    );
  }
}
