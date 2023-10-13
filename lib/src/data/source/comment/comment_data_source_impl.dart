part of '../source.dart';

class CommentDataSourceImpl implements CommentDataSource {
  CommentDataSourceImpl({required CommentService service}) : _service = service;

  final CommentService _service;

  @override
  Future<List<Comment>> getCommentList({required int postId}) =>
      _service.getCommentList(postId: postId);
}

@riverpod
CommentDataSource commentDataSource(CommentDataSourceRef ref) {
  final http = ref.watch(httpProvider);
  return CommentDataSourceImpl(service: CommentService(http));
}
