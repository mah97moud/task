import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_item.freezed.dart';
part 'product_item.g.dart';

@freezed
class ProductItem with _$ProductItem {
  factory ProductItem({
    String? id,
    String? name,
    String? slug,
    String? description,
    String? type,
    String? model,
  }) = _ProductItem;

  factory ProductItem.fromJson(Map<String, dynamic> json) =>
      _$ProductItemFromJson(json);
}
