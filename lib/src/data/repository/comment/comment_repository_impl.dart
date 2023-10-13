part of '../repository.dart';

class CommentRepositoryImpl implements CommentRepository {
  CommentRepositoryImpl({required CommentDataSource source}) : _source = source;

  final CommentDataSource _source;

  @override
  Future<List<Comment>> getCommentList({required int postId}) =>
      _source.getCommentList(postId: postId);
}

@riverpod
CommentRepository commentRepository(CommentRepositoryRef ref) {
  final source = ref.watch(commentDataSourceProvider);
  return CommentRepositoryImpl(source: source);
}
