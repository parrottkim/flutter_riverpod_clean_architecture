part of '../repository.dart';

abstract class CommentRepository {
  Future<List<Comment>> getCommentList({required int postId});
}
