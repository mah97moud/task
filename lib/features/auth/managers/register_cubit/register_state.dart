part of 'register_cubit.dart';

class RegisterState extends Equatable {
  const RegisterState({
    this.registerStatus = const RegisterInitial(),
    this.firstName = '',
    this.lastName = '',
    this.phone = 0,
    this.dialCode = 20,
    this.password = '',
    this.confirmPassword = '',
  });

  final String firstName;
  final String lastName;
  final int phone;
  final int dialCode;
  final String password;
  final String confirmPassword;
  final RegisterStatus registerStatus;

  RegisterState copyWith({

   String? firstName,
   String? lastName,
   int? phone,
   int? dialCode,
   String? password,
   String? confirmPassword,
   RegisterStatus? registerStatus,
  }){
    return RegisterState(
      registerStatus: registerStatus?? const RegisterInitial(),
      firstName: firstName?? this.firstName,
      lastName: lastName ?? this.lastName,
      phone: phone ?? this.phone,
      dialCode: dialCode ?? this.dialCode,
      password: password?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
    );
  }

  @override
  List<Object> get props => [
        firstName,
        lastName,
        phone,
        dialCode,
        password,
        confirmPassword,
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
  final RegisterModel registerModel;

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
