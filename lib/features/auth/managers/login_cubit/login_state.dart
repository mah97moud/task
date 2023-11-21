part of 'login_cubit.dart';

class LoginState extends Equatable {
  const LoginState({
    this.dialCode = 20,
    this.loginStatus = const LoginInitial(),
    this.phone = 0,
  });
  final int phone;
  final LoginStatus loginStatus;
  final int dialCode;

  LoginState copyWith({
    int? dialCode,
    int? phone,
    LoginStatus? loginStatus,
  }) {
    return LoginState(
      loginStatus: loginStatus ?? const LoginInitial(),
      phone: phone ?? this.phone,
      dialCode: dialCode ?? this.dialCode,
    );
  }

  @override
  List<Object> get props => [phone, loginStatus, dialCode];
}

sealed class LoginStatus extends Equatable {
  const LoginStatus();
  @override
  List<Object?> get props => [];
}

final class LoginInitial extends LoginStatus {
  const LoginInitial();

  @override
  List<Object> get props => [];
}

final class LoginSending extends LoginStatus {
  const LoginSending();
}

final class LoginSuccess extends LoginStatus {
  final AuthModel loginModel;

  const LoginSuccess({required this.loginModel});

  @override
  List<Object> get props => [loginModel];
}

final class LoginFailure extends LoginStatus {
  final String message;

  const LoginFailure({required this.message});

  @override
  List<Object> get props => [message];
}
