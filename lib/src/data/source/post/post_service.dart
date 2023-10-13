part of '../source.dart';

@RestApi()
abstract class PostService {
  factory PostService(Dio dio, {String baseUrl}) = _PostService;

  @GET('posts')
  Future<List<Post>> getPostList({
    @Query('_start') required int start,
    @Query('_limit') required int limit,
  });

  @GET('posts/{id}')
  Future<Post> getPostDetail({
    @Path('id') required int id,
  });
}
