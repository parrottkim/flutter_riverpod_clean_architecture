part of '../source.dart';

class PostDataSourceImpl implements PostDataSource {
  PostDataSourceImpl({required PostService service}) : _service = service;

  final PostService _service;

  @override
  Future<List<PostModel>> getPostList(
          {required int start, int limit = 20}) async =>
      _service.getPostList(start: start, limit: limit);

  @override
  Future<PostModel> getPostDetail({required int id}) =>
      _service.getPostDetail(id: id);
}

@riverpod
PostDataSource postDataSource(PostDataSourceRef ref) {
  final http = ref.watch(httpProvider);
  return PostDataSourceImpl(service: PostService(http));
}
