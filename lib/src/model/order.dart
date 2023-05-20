import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'converter.dart';

part 'order.g.dart';

@JsonSerializable()
class OrderResponse extends Equatable {
  static final _encoder = JsonEncoder.withIndent('  ');

  @JsonKey(name: 'orders')
  final List<Order> items;

  const OrderResponse({
    required this.items,
  });

  factory OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderResponseToJson(this);

  @override
  List<Object?> get props => [items];

  @override
  String toString() => _encoder.convert(toJson());
}

@JsonSerializable()
class Order extends Equatable {
  static final _encoder = JsonEncoder.withIndent('  ');

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'id_customer')
  final int customerId;

  @JsonKey(name: 'date_add', fromJson: stringToDate)
  final DateTime date;

  @JsonKey(name: 'payment')
  final String payment;

  @JsonKey(name: 'shipping_number')
  final String shippingNumber;

  @JsonKey(name: 'total_products')
  final double totalProducts;

  @JsonKey(name: 'total_shipping')
  final double totalShipping;

  @JsonKey(name: 'total_discounts')
  final double totalDiscounts;

  @JsonKey(name: 'total_paid')
  final double totalPaid;

  @JsonKey(name: 'reference')
  final String reference;

  @JsonKey(name: 'note')
  final String? note;

  @JsonKey(name: 'associations')
  final Associations? associations;

  const Order({
    required this.id,
    required this.customerId,
    required this.date,
    required this.payment,
    required this.totalProducts,
    required this.totalDiscounts,
    required this.totalPaid,
    required this.totalShipping,
    required this.reference,
    required this.shippingNumber,
    required this.note,
    required this.associations,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);

  @override
  List<Object?> get props => [id];

  @override
  String toString() => _encoder.convert(toJson());
}

@JsonSerializable()
class Associations extends Equatable {
  static final _encoder = JsonEncoder.withIndent('  ');

  @JsonKey(name: 'order_rows')
  final List<OrderRow> orderRows;

  Associations({required this.orderRows});

  factory Associations.fromJson(Map<String, dynamic> json) =>
      _$AssociationsFromJson(json);

  Map<String, dynamic> toJson() => _$AssociationsToJson(this);

  @override
  List<Object?> get props => [orderRows];

  @override
  String toString() => _encoder.convert(toJson());
}

@JsonSerializable()
class OrderRow extends Equatable {
  static final _encoder = JsonEncoder.withIndent('  ');

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'product_id')
  final int productId;

  @JsonKey(name: 'product_quantity')
  final int quantity;

  @JsonKey(name: 'product_reference')
  final String productRef;

  @JsonKey(name: 'product_name')
  final String productName;

  @JsonKey(name: 'product_price')
  final double price;

  OrderRow({
    required this.productId,
    required this.quantity,
    required this.productRef,
    required this.productName,
    required this.price,
    required this.id,
  });

  factory OrderRow.fromJson(Map<String, dynamic> json) =>
      _$OrderRowFromJson(json);

  Map<String, dynamic> toJson() => _$OrderRowToJson(this);

  @override
  List<Object?> get props => [id];

  @override
  String toString() => _encoder.convert(toJson());
}
