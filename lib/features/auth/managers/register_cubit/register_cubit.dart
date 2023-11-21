import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task/core/app/data/models/register_model/register_model.dart';
import 'package:task/features/auth/repository/auth_repostiory.dart';

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

  void passwordChanged(String? password) {
    emit(state.copyWith(password: password));
  }
  
  void confPasswordChanged(String? confPassword) {
    emit(state.copyWith(confirmPassword: confPassword));
  }

  Future<void> register() async {}
}
