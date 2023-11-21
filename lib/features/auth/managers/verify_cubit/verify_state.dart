part of 'verify_cubit.dart';

sealed class VerifyState extends Equatable {
  const VerifyState();

  @override
  List<Object> get props => [];
}

final class VerifyInitial extends VerifyState {}

final class VerifySending extends VerifyState {}

final class VerifySuccess extends VerifyState {
  final VerifyModel verifyModel;

  const VerifySuccess({required this.verifyModel});
  @override
  List<Object> get props => [verifyModel];
}

final class VerifyFailure extends VerifyState {
  final String message;

  const VerifyFailure({required this.message});
  @override
  List<Object> get props => [message];
}
