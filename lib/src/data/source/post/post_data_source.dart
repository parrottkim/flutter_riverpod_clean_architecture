part of '../source.dart';

abstract class PostDataSource {
  Future<List<PostModel>> getPostList({required int start, int limit = 20});

  Future<PostModel> getPostDetail({required int id});
}
