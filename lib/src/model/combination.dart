import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'combination.g.dart';

@JsonSerializable()
class CombinationsResponse extends Equatable {
  @JsonKey(name: 'combinations')
  final List<Combination> items;

  const CombinationsResponse({
    required this.items,
  });

  factory CombinationsResponse.fromJson(Map<String, dynamic> json) =>
      _$CombinationsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CombinationsResponseToJson(this);

  @override
  List<Object?> get props => [items];
}

@JsonSerializable()
class Combination extends Equatable {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'id_product')
  final String idProduct;

  @JsonKey(name: 'location')
  final String location;

  @JsonKey(name: 'ean13')
  final String ean13;

  @JsonKey(name: 'isbn')
  final String isbn;

  @JsonKey(name: 'upc')
  final String upc;

  @JsonKey(name: 'mpn')
  final String mpn;

  @JsonKey(name: 'quantity')
  final int quantity;

  @JsonKey(name: 'reference')
  final String reference;

  @JsonKey(name: 'supplier_reference')
  final String supplierReference;

  @JsonKey(name: 'wholesale_price')
  final String wholesalePrice;

  @JsonKey(name: 'price')
  final String price;

  @JsonKey(name: 'ecotax')
  final String ecotax;

  @JsonKey(name: 'weight')
  final String weight;

  @JsonKey(name: 'unit_price_impact')
  final String unitPriceImpact;

  @JsonKey(name: 'minimal_quantity')
  final String minimalQuantity;

  @JsonKey(name: 'low_stock_threshold')
  final String lowStockThreshold;

  @JsonKey(name: 'low_stock_alert')
  final String lowStockAlert;

  @JsonKey(name: 'default_on')
  final String defaultOn;

  @JsonKey(name: 'available_date')
  final String availableDate;

  @JsonKey(name: 'associations')
  final CombinationAssociations associations;

  Combination({
    required this.id,
    required this.idProduct,
    required this.location,
    required this.ean13,
    required this.isbn,
    required this.upc,
    required this.mpn,
    required this.quantity,
    required this.reference,
    required this.supplierReference,
    required this.wholesalePrice,
    required this.price,
    required this.ecotax,
    required this.weight,
    required this.unitPriceImpact,
    required this.minimalQuantity,
    required this.lowStockThreshold,
    required this.lowStockAlert,
    required this.defaultOn,
    required this.availableDate,
    required this.associations,
  });

  factory Combination.fromJson(Map<String, dynamic> json) =>
      _$CombinationFromJson(json);

  Map<String, dynamic> toJson() => _$CombinationToJson(this);

  @override
  List<Object?> get props => [id];
}

@JsonSerializable()
class CombinationAssociations extends Equatable {
  @JsonKey(name: 'product_option_values')
  final List<ProductOptionValue> productOptionValues;

  @JsonKey(name: 'images')
  final List<Image> images;

  CombinationAssociations({
    required this.productOptionValues,
    required this.images,
  });

  factory CombinationAssociations.fromJson(Map<String, dynamic> json) =>
      _$CombinationAssociationsFromJson(json);

  Map<String, dynamic> toJson() => _$CombinationAssociationsToJson(this);

  @override
  List<Object?> get props => [productOptionValues, images];
}

@JsonSerializable()
class ProductOptionValue extends Equatable {
  @JsonKey(name: 'id')
  final String id;

  ProductOptionValue({
    required this.id,
  });

  factory ProductOptionValue.fromJson(Map<String, dynamic> json) =>
      _$ProductOptionValueFromJson(json);

  Map<String, dynamic> toJson() => _$ProductOptionValueToJson(this);

  @override
  List<Object?> get props => [id];
}

@JsonSerializable()
class Image extends Equatable {
  @JsonKey(name: 'id')
  final String id;

  Image({
    required this.id,
  });

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);

  @override
  List<Object?> get props => [id];
}
