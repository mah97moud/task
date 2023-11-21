

import 'package:task/core/app/data/models/product_model/product_model.dart';
import 'package:task/core/app/data/responses/product_response/product_response.dart';

extension ToProductModel on ProductResponse {
  ProductModel get toProductModel => ProductModel.fromJson(toJson());
}