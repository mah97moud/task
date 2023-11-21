import 'package:flutter/material.dart';
import 'package:task/core/helpers/styles_manager.dart';

class ProductItemRow extends StatelessWidget {
  const ProductItemRow({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: StylesManager.textStyle16.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: StylesManager.textStyle16,
            ),
          ),
        ],
      ),
    );
  }
}
