import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task/core/helpers/type_helper.dart';

import '../../../../core/app/data/models/product_model/product_model.dart';
import '../../repository/home_repository.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this._homeRepository) : super(ProductsInitial());
  final HomeRepository _homeRepository;


 Future<void> getProducts() async {
    emit(const ProductsLoading());

    final result = await _homeRepository.products();

    result.fold(
      (value) => emit(ProductsLoaded(productsModel: value)),
      (message) => emit(
        ProductsFailure(message: message),
      ),
    );
  }
}


