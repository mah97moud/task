part of 'me_cubit.dart';

sealed class MeState extends Equatable {
  const MeState();

  @override
  List<Object> get props => [];
}

final class MeInitial extends MeState {}
final class MeLoading extends MeState {
  const MeLoading();
}
final class MeLoaded extends MeState {
  final MeModel meModel;

  const MeLoaded({required this.meModel});
  @override
  List<Object> get props => [meModel];
}
final class MeFailure extends MeState {
  final String message;

  const MeFailure({required this.message});
  @override
  List<Object> get props => [message];
}
