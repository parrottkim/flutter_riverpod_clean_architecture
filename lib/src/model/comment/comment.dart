part of '../model.dart';

@freezed
class Comment with _$Comment {
  factory Comment({
    required int id,
    required int postId,
    required String name,
    required String email,
    required String body,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}
