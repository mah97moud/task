import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/home/managers/products_cubit/products_cubit.dart';
import 'package:task/features/home/widgets/product_card.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsLoading) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        }
        if (state is ProductsFailure) {
          return Center(
            child: Text(state.message),
          );
        }
        if (state is ProductsLoaded) {
          return ListView.builder(
            itemCount: state.productsModel.data?.length ?? 0,
            itemBuilder: (_, index) {
              var data = state.productsModel.data;
              if (data == null) {
                return const Center(
                  child: Text('There are no products'),
                );
              }
              final product = data[index];
              return ProductCard(product: product);
            },
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
