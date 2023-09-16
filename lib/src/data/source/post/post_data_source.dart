part of '../source.dart';

abstract class PostDataSource {
  Future<List<Post>> getPost({required int start, int limit = 20});
}
