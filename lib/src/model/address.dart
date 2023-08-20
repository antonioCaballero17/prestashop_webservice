import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class AddressesResponse extends Equatable {
  @JsonKey(name: 'addresses')
  final List<Address> items;

  const AddressesResponse({
    required this.items,
  });

  factory AddressesResponse.fromJson(Map<String, dynamic> json) =>
      _$AddressesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddressesResponseToJson(this);

  @override
  List<Object?> get props => [items];
}

@JsonSerializable()
class Address extends Equatable {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'id_customer')
  final String idCustomer;

  @JsonKey(name: 'id_manufacturer')
  final String idManufacturer;

  @JsonKey(name: 'id_supplier')
  final String idSupplier;

  @JsonKey(name: 'id_warehouse')
  final String idWarehouse;

  @JsonKey(name: 'id_country')
  final String idCountry;

  @JsonKey(name: 'id_state')
  final String idState;

  @JsonKey(name: 'alias')
  final String alias;

  @JsonKey(name: 'company')
  final String company;

  @JsonKey(name: 'lastname')
  final String lastname;

  @JsonKey(name: 'firstname')
  final String firstname;

  @JsonKey(name: 'vat_number')
  final String vatNumber;

  @JsonKey(name: 'address1')
  final String address1;

  @JsonKey(name: 'address2')
  final String address2;

  @JsonKey(name: 'postcode')
  final String postcode;

  @JsonKey(name: 'city')
  final String city;

  @JsonKey(name: 'other')
  final String other;

  @JsonKey(name: 'phone')
  final String phone;

  @JsonKey(name: 'phone_mobile')
  final String phoneMobile;

  @JsonKey(name: 'dni')
  final String dni;

  @JsonKey(name: 'deleted')
  final String deleted;

  @JsonKey(name: 'date_add')
  final String dateAdd;

  @JsonKey(name: 'date_upd')
  final String dateUpd;

  Address({
    required this.id,
    required this.idCustomer,
    required this.idManufacturer,
    required this.idSupplier,
    required this.idWarehouse,
    required this.idCountry,
    required this.idState,
    required this.alias,
    required this.company,
    required this.lastname,
    required this.firstname,
    required this.vatNumber,
    required this.address1,
    required this.address2,
    required this.postcode,
    required this.city,
    required this.other,
    required this.phone,
    required this.phoneMobile,
    required this.dni,
    required this.deleted,
    required this.dateAdd,
    required this.dateUpd,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);

  @override
  List<Object?> get props => [id];
}
