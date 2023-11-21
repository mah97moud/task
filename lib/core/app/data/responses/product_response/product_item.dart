import 'package:equatable/equatable.dart';

class ProductItem extends Equatable {
  final String? id;
  final String? name;
  final String? slug;
  final String? description;
  final String? type;
  final String? model;

  const ProductItem({
    this.id,
    this.name,
    this.slug,
    this.description,
    this.type,
    this.model,
  });

  factory ProductItem.fromJson(Map<String, dynamic> json) => ProductItem(
        id: json['id'] as String?,
        name: json['name'] as String?,
        slug: json['slug'] as String?,
        description: json['description'] as String?,
        type: json['type'] as String?,
        model: json['model'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'slug': slug,
        'description': description,
        'type': type,
        'model': model,
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, name, slug, description, type, model];
}
