part of '../repository.dart';

class CommentRepositoryImpl implements CommentRepository {
  CommentRepositoryImpl({required CommentDataSource source}) : _source = source;

  final CommentDataSource _source;

  @override
  Future<List<CommentEntity>> getCommentList({required int postId}) async {
    final list = await _source.getCommentList(postId: postId);
    return list.map((element) => element.toEntity()).toList();
  }
}

@riverpod
CommentRepository commentRepository(CommentRepositoryRef ref) {
  final source = ref.watch(commentDataSourceProvider);
  return CommentRepositoryImpl(source: source);
}
