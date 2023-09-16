part of '../source.dart';

@RestApi()
abstract class PostService {
  factory PostService(Dio dio, {String baseUrl}) = _PostService;

  @GET('post')
  Future<List<Post>> getPost({
    @Query('_start') required int start,
    @Query('_limit') required int limit,
  });
}
