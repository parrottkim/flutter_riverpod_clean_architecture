part of '../source.dart';

abstract class CommentDataSource {
  Future<List<Comment>> getCommentList({required int postId});
}
