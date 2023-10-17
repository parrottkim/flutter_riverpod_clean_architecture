part of '../entity.dart';

@freezed
class PostEntity with _$PostEntity {
  factory PostEntity({
    required int id,
    required int userId,
    required String title,
    required String body,
  }) = _PostEntity;

  factory PostEntity.fromJson(Map<String, dynamic> json) =>
      _$PostEntityFromJson(json);
}
