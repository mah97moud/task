import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task/core/app/data/requests/login_request.dart';
import 'package:task/core/helpers/type_helper.dart';

import '../../../../core/app/data/models/auth_model/auth_model.dart';
import '../../../../core/app/di.dart';
import '../../repository/auth_repository.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authRepository) : super(const LoginState());

  final AuthRepository _authRepository;

  void phoneChanged(String? phone) {
    if (phone != null && phone.startsWith('0')) {
      final value = int.tryParse(phone.replaceFirst('0', ''));
      emit(state.copyWith(phone: value));
    } else {
      final value = int.tryParse(phone ?? '0');
      emit(state.copyWith(phone: value));
    }
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

  Future<void> login() async {
    final request = LoginRequest(
      dialCode: state.dialCode,
      phone: state.phone,
      identity: identity,
    );
    emit(state.copyWith(loginStatus: const LoginSending()));

    final result = await _authRepository.login(request);

    result.fold(
      (value) => emit(
        LoginState(
          loginStatus: LoginSuccess(
            loginModel: value,
          ),
          phone: state.phone,
        ),
      ),
      (message) => emit(
        state.copyWith(
          loginStatus: LoginFailure(message: message),
        ),
      ),
    );
  }
}
