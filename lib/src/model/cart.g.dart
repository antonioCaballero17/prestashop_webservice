// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartsResponse _$CartsResponseFromJson(Map<String, dynamic> json) =>
    CartsResponse(
      items: (json['carts'] as List<dynamic>)
          .map((e) => Cart.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CartsResponseToJson(CartsResponse instance) =>
    <String, dynamic>{
      'carts': instance.items,
    };

Cart _$CartFromJson(Map<String, dynamic> json) => Cart(
      id: json['id'] as int,
      idAddressDelivery: json['id_address_delivery'] as String?,
      idAddressInvoice: json['id_address_invoice'] as String?,
      idCurrency: json['id_currency'] as String?,
      idCustomer: json['id_customer'] as String?,
      idGuest: json['id_guest'] as String?,
      idLang: json['id_lang'] as String?,
      idShopGroup: json['id_shop_group'] as String?,
      idShop: json['id_shop'] as String?,
      idCarrier: json['id_carrier'] as String?,
      recyclable: json['recyclable'] as String?,
      gift: json['gift'] as String?,
      giftMessage: json['gift_message'] as String?,
      mobileTheme: json['mobile_theme'] as String?,
      deliveryOption: json['delivery_option'] as String?,
      secureKey: json['secure_key'] as String?,
      allowSeperatedPackage: json['allow_seperated_package'] as String?,
      dateAdd: JsonDate.fromJson(json['date_add'] as String),
      dateUpd: JsonDate.fromJson(json['date_upd'] as String),
      associations: json['associations'] == null
          ? null
          : CartAssociations.fromJson(
              json['associations'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CartToJson(Cart instance) => <String, dynamic>{
      'id': instance.id,
      'id_address_delivery': instance.idAddressDelivery,
      'id_address_invoice': instance.idAddressInvoice,
      'id_currency': instance.idCurrency,
      'id_customer': instance.idCustomer,
      'id_guest': instance.idGuest,
      'id_lang': instance.idLang,
      'id_shop_group': instance.idShopGroup,
      'id_shop': instance.idShop,
      'id_carrier': instance.idCarrier,
      'recyclable': instance.recyclable,
      'gift': instance.gift,
      'gift_message': instance.giftMessage,
      'mobile_theme': instance.mobileTheme,
      'delivery_option': instance.deliveryOption,
      'secure_key': instance.secureKey,
      'allow_seperated_package': instance.allowSeperatedPackage,
      'date_add': JsonDate.toJson(instance.dateAdd),
      'date_upd': JsonDate.toJson(instance.dateUpd),
      'associations': instance.associations,
    };

CartAssociations _$CartAssociationsFromJson(Map<String, dynamic> json) =>
    CartAssociations(
      cartRows: (json['cart_rows'] as List<dynamic>)
          .map((e) => CartRow.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CartAssociationsToJson(CartAssociations instance) =>
    <String, dynamic>{
      'cart_rows': instance.cartRows,
    };

CartRow _$CartRowFromJson(Map<String, dynamic> json) => CartRow(
      idProduct: json['id_product'] as String,
      idProductAttribute: json['id_product_attribute'] as String,
      idAddressDelivery: json['id_address_delivery'] as String,
      idCustomization: json['id_customization'] as String,
      quantity: json['quantity'] as String,
    );

Map<String, dynamic> _$CartRowToJson(CartRow instance) => <String, dynamic>{
      'id_product': instance.idProduct,
      'id_product_attribute': instance.idProductAttribute,
      'id_address_delivery': instance.idAddressDelivery,
      'id_customization': instance.idCustomization,
      'quantity': instance.quantity,
    };
