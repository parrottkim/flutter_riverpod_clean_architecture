part of '../repository.dart';

abstract class PostRepository {
  Future<List<Post>> getPost({required int start, int limit = 20});
}
