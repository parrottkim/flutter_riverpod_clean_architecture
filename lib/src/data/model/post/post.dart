part of '../model.dart';

@freezed
class PostModel with _$PostModel {
  factory PostModel({
    required int id,
    required int userId,
    required String title,
    required String body,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}

extension PostExtension on PostModel {
  PostEntity toEntity() => PostEntity(
        id: id,
        userId: userId,
        title: title,
        body: body,
      );
}
