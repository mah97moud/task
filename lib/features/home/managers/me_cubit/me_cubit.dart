import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task/core/app/data/models/me_model/me_model.dart';
import 'package:task/core/helpers/type_helper.dart';
import 'package:task/features/home/repository/home_repository.dart';

part 'me_state.dart';

class MeCubit extends Cubit<MeState> {
  MeCubit(this._homeRepository) : super(MeInitial());
  final HomeRepository _homeRepository;

  Future<void> getProfileData() async {
    emit(const MeLoading());

    final result = await _homeRepository.me();

    result.fold(
      (value) => emit(MeLoaded(meModel: value)),
      (message) => emit(
        MeFailure(message: message),
      ),
    );
  }
}
