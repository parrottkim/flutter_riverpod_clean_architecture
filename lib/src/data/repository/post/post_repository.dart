part of '../repository.dart';

abstract class PostRepository {
  Future<List<Post>> getPostList({required int start, int limit = 20});

  Future<Post> getPostDetail({required int id});
}
