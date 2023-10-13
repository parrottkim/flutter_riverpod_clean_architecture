part of '../repository.dart';

class PostRepositoryImpl implements PostRepository {
  PostRepositoryImpl({required PostDataSource source}) : _source = source;

  final PostDataSource _source;

  @override
  Future<List<Post>> getPostList({required int start, int limit = 20}) =>
      _source.getPostList(start: start, limit: limit);

  @override
  Future<Post> getPostDetail({required int id}) =>
      _source.getPostDetail(id: id);
}

@riverpod
PostRepository postRepository(PostRepositoryRef ref) {
  final source = ref.watch(postDataSourceProvider);
  return PostRepositoryImpl(source: source);
}
