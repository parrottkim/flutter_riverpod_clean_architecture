part of '../repository.dart';

abstract class PostRepository {
  Future<List<PostEntity>> getPostList({required int start, int limit = 20});

  Future<PostEntity> getPostDetail({required int id});
}
