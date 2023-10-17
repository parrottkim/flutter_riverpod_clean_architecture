part of '../entity.dart';

@freezed
class UserEntity with _$UserEntity {
  factory UserEntity({
    required int id,
    required String name,
    required String username,
    required String email,
    required AddressEntity address,
    required String phone,
    required String website,
    required CompanyEntity company,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}

@freezed
class AddressEntity with _$AddressEntity {
  factory AddressEntity({
    required String street,
    required String suite,
    required String city,
    required String zipcode,
    required GeoEntity geo,
  }) = _AddressEntity;

  factory AddressEntity.fromJson(Map<String, dynamic> json) =>
      _$AddressEntityFromJson(json);
}

@freezed
class GeoEntity with _$GeoEntity {
  factory GeoEntity({
    required String lat,
    required String lng,
  }) = _GeoEntity;

  factory GeoEntity.fromJson(Map<String, dynamic> json) =>
      _$GeoEntityFromJson(json);
}

@freezed
class CompanyEntity with _$CompanyEntity {
  factory CompanyEntity({
    required String name,
    required String catchPhrase,
    required String bs,
  }) = _CompanyEntity;

  factory CompanyEntity.fromJson(Map<String, dynamic> json) =>
      _$CompanyEntityFromJson(json);
}
