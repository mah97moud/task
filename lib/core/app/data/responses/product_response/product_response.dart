import 'package:equatable/equatable.dart';

import 'product_item.dart';

class ProductResponse extends Equatable {
  final List<ProductItem>? data;
  final int? status;
  final String? message;

  const ProductResponse({this.data, this.status, this.message});

  factory ProductResponse.fromJson(Map<String, dynamic> json) {
    return ProductResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ProductItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as int?,
      message: json['message'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
        'status': status,
        'message': message,
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [data, status, message];
}
