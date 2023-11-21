import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_item.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  factory ProductModel({
    List<ProductItem>? data,
    int? status,
    String? message,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
