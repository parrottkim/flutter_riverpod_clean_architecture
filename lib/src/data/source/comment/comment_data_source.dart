part of '../source.dart';

abstract class CommentDataSource {
  Future<List<CommentModel>> getCommentList({required int postId});
}
