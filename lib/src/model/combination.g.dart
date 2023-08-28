// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'combination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CombinationsResponse _$CombinationsResponseFromJson(
        Map<String, dynamic> json) =>
    CombinationsResponse(
      items: (json['combinations'] as List<dynamic>)
          .map((e) => Combination.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CombinationsResponseToJson(
        CombinationsResponse instance) =>
    <String, dynamic>{
      'combinations': instance.items,
    };

Combination _$CombinationFromJson(Map<String, dynamic> json) => Combination(
      id: json['id'] as int,
      idProduct: json['id_product'] as String,
      location: json['location'] as String,
      ean13: json['ean13'] as String,
      isbn: json['isbn'] as String,
      upc: json['upc'] as String,
      mpn: json['mpn'] as String,
      quantity: json['quantity'] as int,
      reference: json['reference'] as String,
      supplierReference: json['supplier_reference'] as String,
      wholesalePrice: json['wholesale_price'] as String,
      price: json['price'] as String,
      ecotax: json['ecotax'] as String,
      weight: json['weight'] as String,
      unitPriceImpact: json['unit_price_impact'] as String,
      minimalQuantity: json['minimal_quantity'] as String,
      lowStockThreshold: json['low_stock_threshold'] as String,
      lowStockAlert: json['low_stock_alert'] as String,
      defaultOn: json['default_on'] as String,
      availableDate: json['available_date'] as String,
      associations: CombinationAssociations.fromJson(
          json['associations'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CombinationToJson(Combination instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_product': instance.idProduct,
      'location': instance.location,
      'ean13': instance.ean13,
      'isbn': instance.isbn,
      'upc': instance.upc,
      'mpn': instance.mpn,
      'quantity': instance.quantity,
      'reference': instance.reference,
      'supplier_reference': instance.supplierReference,
      'wholesale_price': instance.wholesalePrice,
      'price': instance.price,
      'ecotax': instance.ecotax,
      'weight': instance.weight,
      'unit_price_impact': instance.unitPriceImpact,
      'minimal_quantity': instance.minimalQuantity,
      'low_stock_threshold': instance.lowStockThreshold,
      'low_stock_alert': instance.lowStockAlert,
      'default_on': instance.defaultOn,
      'available_date': instance.availableDate,
      'associations': instance.associations,
    };

CombinationAssociations _$CombinationAssociationsFromJson(
        Map<String, dynamic> json) =>
    CombinationAssociations(
      productOptionValues: (json['product_option_values'] as List<dynamic>)
          .map((e) => ProductOptionValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['images'] as List<dynamic>)
          .map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CombinationAssociationsToJson(
        CombinationAssociations instance) =>
    <String, dynamic>{
      'product_option_values': instance.productOptionValues,
      'images': instance.images,
    };

ProductOptionValue _$ProductOptionValueFromJson(Map<String, dynamic> json) =>
    ProductOptionValue(
      id: json['id'] as String,
    );

Map<String, dynamic> _$ProductOptionValueToJson(ProductOptionValue instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      id: json['id'] as String,
    );

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'id': instance.id,
    };
