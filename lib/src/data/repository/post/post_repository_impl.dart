part of '../repository.dart';

class PostRepositoryImpl implements PostRepository {
  PostRepositoryImpl({required PostDataSource source}) : _source = source;

  final PostDataSource _source;

  @override
  Future<List<PostEntity>> getPostList(
      {required int start, int limit = 20}) async {
    final list = await _source.getPostList(start: start, limit: limit);
    return list.map((element) => element.toEntity()).toList();
  }

  @override
  Future<PostEntity> getPostDetail({required int id}) async {
    final model = await _source.getPostDetail(id: id);
    return model.toEntity();
  }
}

@riverpod
PostRepository postRepository(PostRepositoryRef ref) {
  final source = ref.watch(postDataSourceProvider);
  return PostRepositoryImpl(source: source);
}
