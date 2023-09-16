part of '../repository.dart';

class PostRepositoryImpl implements PostRepository {
  PostRepositoryImpl({required PostDataSource source}) : _source = source;

  final PostDataSource _source;

  @override
  Future<List<Post>> getPost({required int start, int limit = 20}) =>
      _source.getPost(start: start, limit: limit);
}

@riverpod
PostRepository postRepository(PostRepositoryRef ref) {
  final source = ref.watch(postDataSourceProvider);
  return PostRepositoryImpl(source: source);
}
