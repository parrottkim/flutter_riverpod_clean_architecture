part of '../source.dart';

class PostDataSourceImpl implements PostDataSource {
  PostDataSourceImpl({required PostService service}) : _service = service;

  final PostService _service;

  @override
  Future<List<Post>> getPost({required int start, int limit = 20}) =>
      _service.getPost(start: start, limit: limit);
}

@riverpod
PostDataSource postDataSource(PostDataSourceRef ref) {
  final http = ref.watch(httpProvider);
  return PostDataSourceImpl(service: PostService(http));
}
