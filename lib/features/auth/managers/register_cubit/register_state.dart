part of 'register_cubit.dart';

class RegisterState extends Equatable {
  const RegisterState({
    this.registerStatus = const RegisterInitial(),
    this.firstName = '',
    this.lastName = '',
    this.phone = 0,
    this.dialCode = 20,
  });

  final String firstName;
  final String lastName;
  final int phone;
  final int dialCode;
  final RegisterStatus registerStatus;

  RegisterState copyWith({
    String? firstName,
    String? lastName,
    int? phone,
    int? dialCode,
    RegisterStatus? registerStatus,
  }) {
    return RegisterState(
      registerStatus: registerStatus ?? const RegisterInitial(),
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phone: phone ?? this.phone,
      dialCode: dialCode ?? this.dialCode,
    );
  }

  @override
  List<Object> get props => [
        firstName,
        lastName,
        phone,
        dialCode,
        registerStatus,
      ];
}

sealed class RegisterStatus extends Equatable {
  const RegisterStatus();
  @override
  List<Object?> get props => [];
}

final class RegisterInitial extends RegisterStatus {
  const RegisterInitial();

  @override
  List<Object> get props => [];
}

final class RegisterSending extends RegisterStatus {
  const RegisterSending();
}

final class RegisterSuccess extends RegisterStatus {
  final AuthModel registerModel;

  const RegisterSuccess({required this.registerModel});

  @override
  List<Object> get props => [registerModel];
}

final class RegisterFailure extends RegisterStatus {
  final String message;

  const RegisterFailure({required this.message});

  @override
  List<Object> get props => [message];
}
