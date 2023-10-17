part of '../model.dart';

@freezed
class CommentModel with _$CommentModel {
  factory CommentModel({
    required int id,
    required int postId,
    required String name,
    required String email,
    required String body,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);
}

extension CommentExtension on CommentModel {
  CommentEntity toEntity() => CommentEntity(
        id: id,
        postId: postId,
        name: name,
        email: email,
        body: body,
      );
}
