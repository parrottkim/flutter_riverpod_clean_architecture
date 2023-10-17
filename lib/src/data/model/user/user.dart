part of '../model.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    required int id,
    required String name,
    required String username,
    required String email,
    required AddressModel address,
    required String phone,
    required String website,
    required CompanyModel company,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

extension UserExtension on UserModel {
  UserEntity toEntity() => UserEntity(
        id: id,
        name: name,
        username: username,
        email: email,
        address: address.toEntity(),
        phone: phone,
        website: website,
        company: company.toEntity(),
      );
}

@freezed
class AddressModel with _$AddressModel {
  factory AddressModel({
    required String street,
    required String suite,
    required String city,
    required String zipcode,
    required GeoModel geo,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}

extension AddressExtension on AddressModel {
  AddressEntity toEntity() => AddressEntity(
        street: street,
        suite: suite,
        city: city,
        zipcode: zipcode,
        geo: geo.toEntity(),
      );
}

@freezed
class GeoModel with _$GeoModel {
  factory GeoModel({
    required String lat,
    required String lng,
  }) = _GeoModel;

  factory GeoModel.fromJson(Map<String, dynamic> json) =>
      _$GeoModelFromJson(json);
}

extension GeoExtension on GeoModel {
  GeoEntity toEntity() => GeoEntity(
        lat: lat,
        lng: lng,
      );
}

@freezed
class CompanyModel with _$CompanyModel {
  factory CompanyModel({
    required String name,
    required String catchPhrase,
    required String bs,
  }) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
}

extension CompanyExtension on CompanyModel {
  CompanyEntity toEntity() => CompanyEntity(
        name: name,
        catchPhrase: catchPhrase,
        bs: bs,
      );
}
