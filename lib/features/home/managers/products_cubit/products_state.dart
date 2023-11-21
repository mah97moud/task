part of 'products_cubit.dart';

sealed class ProductsState extends Equatable {
  const ProductsState();

  @override
  List<Object> get props => [];
}

final class ProductsInitial extends ProductsState {}
final class ProductsLoading extends ProductsState {
  const ProductsLoading();
}
final class ProductsLoaded extends ProductsState {
  final ProductModel productsModel;

  const ProductsLoaded({required this.productsModel});
  @override
  List<Object> get props => [productsModel];
}
final class ProductsFailure extends ProductsState {
  final String message;

  const ProductsFailure({required this.message});
  @override
  List<Object> get props => [message];
}
