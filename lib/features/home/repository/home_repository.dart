import 'package:task/core/app/data/models/me_model/me_model.dart';
import 'package:task/core/app/data/models/product_model/product_model.dart';
import 'package:task/core/helpers/type_helper.dart';

abstract class HomeRepository {
  Future<Result<MeModel>> me();
  Future<Result<ProductModel>> products();
}
