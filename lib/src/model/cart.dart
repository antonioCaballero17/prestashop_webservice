import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cart.g.dart';

@JsonSerializable()
class CartsResponse extends Equatable {
  @JsonKey(name: 'carts')
  final List<Cart> items;

  const CartsResponse({
    required this.items,
  });

  factory CartsResponse.fromJson(Map<String, dynamic> json) =>
      _$CartsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CartsResponseToJson(this);

  @override
  List<Object?> get props => [items];
}

@JsonSerializable()
class Cart extends Equatable {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'id_address_delivery')
  final String idAddressDelivery;

  @JsonKey(name: 'id_address_invoice')
  final String idAddressInvoice;

  @JsonKey(name: 'id_currency')
  final String idCurrency;

  @JsonKey(name: 'id_customer')
  final String idCustomer;

  @JsonKey(name: 'id_guest')
  final String idGuest;

  @JsonKey(name: 'id_lang')
  final String idLang;

  @JsonKey(name: 'id_shop_group')
  final String idShopGroup;

  @JsonKey(name: 'id_shop')
  final String idShop;

  @JsonKey(name: 'id_carrier')
  final String idCarrier;

  @JsonKey(name: 'recyclable')
  final String recyclable;

  @JsonKey(name: 'gift')
  final String gift;

  @JsonKey(name: 'gift_message')
  final String giftMessage;

  @JsonKey(name: 'mobile_theme')
  final String mobileTheme;

  @JsonKey(name: 'delivery_option')
  final String deliveryOption;

  @JsonKey(name: 'secure_key')
  final String secureKey;

  @JsonKey(name: 'allow_seperated_package')
  final String allowSeperatedPackage;

  @JsonKey(name: 'date_add')
  final String dateAdd;

  @JsonKey(name: 'date_upd')
  final String dateUpd;

  @JsonKey(name: 'associations')
  final CartAssociations associations;

  Cart({
    required this.id,
    required this.idAddressDelivery,
    required this.idAddressInvoice,
    required this.idCurrency,
    required this.idCustomer,
    required this.idGuest,
    required this.idLang,
    required this.idShopGroup,
    required this.idShop,
    required this.idCarrier,
    required this.recyclable,
    required this.gift,
    required this.giftMessage,
    required this.mobileTheme,
    required this.deliveryOption,
    required this.secureKey,
    required this.allowSeperatedPackage,
    required this.dateAdd,
    required this.dateUpd,
    required this.associations,
  });

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

  Map<String, dynamic> toJson() => _$CartToJson(this);

  @override
  List<Object?> get props => [id];
}

@JsonSerializable()
class CartAssociations extends Equatable {
  @JsonKey(name: 'cart_rows')
  final List<CartRow> cartRows;

  CartAssociations({required this.cartRows});

  factory CartAssociations.fromJson(Map<String, dynamic> json) =>
      _$CartAssociationsFromJson(json);

  Map<String, dynamic> toJson() => _$CartAssociationsToJson(this);

  @override
  List<Object?> get props => [cartRows];
}

@JsonSerializable()
class CartRow extends Equatable {
  @JsonKey(name: 'id_product')
  final String idProduct;

  @JsonKey(name: 'id_product_attribute')
  final String idProductAttribute;

  @JsonKey(name: 'id_address_delivery')
  final String idAddressDelivery;

  @JsonKey(name: 'id_customization')
  final String idCustomization;

  @JsonKey(name: 'quantity')
  final String quantity;

  CartRow({
    required this.idProduct,
    required this.idProductAttribute,
    required this.idAddressDelivery,
    required this.idCustomization,
    required this.quantity,
  });

  factory CartRow.fromJson(Map<String, dynamic> json) =>
      _$CartRowFromJson(json);

  Map<String, dynamic> toJson() => _$CartRowToJson(this);

  @override
  List<Object?> get props => [idProduct];
}
