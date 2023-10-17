part of '../repository.dart';

abstract class CommentRepository {
  Future<List<CommentEntity>> getCommentList({required int postId});
}
