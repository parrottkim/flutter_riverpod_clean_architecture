part of '../usecase.dart';

@riverpod
Future<List<PostEntity>> getInitialPosts(GetInitialPostsRef ref) async {
  final repository = ref.watch(postRepositoryProvider);
  return await repository.getPostList(start: 0);
}

@riverpod
Future<List<PostEntity>> getMorePosts(GetMorePostsRef ref,
    {required int start}) async {
  final repository = ref.watch(postRepositoryProvider);
  return await repository.getPostList(start: start);
}

@riverpod
Future<PostEntity> getPostDetail(GetPostDetailRef ref,
    {required int id}) async {
  final repository = ref.watch(postRepositoryProvider);
  return await repository.getPostDetail(id: id);
}
