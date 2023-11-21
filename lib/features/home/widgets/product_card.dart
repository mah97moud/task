import 'package:flutter/material.dart';
import 'package:task/core/app/data/models/product_model/product_item.dart';
import 'package:task/features/home/widgets/product_item_row.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
  });

  final ProductItem product;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
          horizontal: 20.0, vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ProductItemRow(
              title: 'Name: ',
              value: product.name ?? '',
            ),
              ProductItemRow(
              title: 'Model: ',
              value: product.model ?? '',
            ),
              ProductItemRow(
              title: 'Description: ',
              value:product.description ?? ''
            ),
          ],
        ),
      ),
    );
  }
}
