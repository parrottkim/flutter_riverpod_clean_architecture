part of '../source.dart';

@RestApi()
abstract class CommentService {
  factory CommentService(Dio dio, {String baseUrl}) = _CommentService;

  @GET('comments')
  Future<List<CommentModel>> getCommentList({
    @Query('postId') required int postId,
  });
}
