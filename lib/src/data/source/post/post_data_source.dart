part of '../source.dart';

abstract class PostDataSource {
  Future<List<Post>> getPostList({required int start, int limit = 20});

  Future<Post> getPostDetail({required int id});
}
