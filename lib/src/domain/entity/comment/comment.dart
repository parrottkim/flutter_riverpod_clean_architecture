part of '../entity.dart';

@freezed
class CommentEntity with _$CommentEntity {
  factory CommentEntity({
    required int id,
    required int postId,
    required String name,
    required String email,
    required String body,
  }) = _CommentEntity;
}
