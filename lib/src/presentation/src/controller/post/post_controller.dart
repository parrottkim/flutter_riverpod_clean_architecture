part of '../controller.dart';

@riverpod
class PostController extends _$PostController {
  @override
  FutureOr<PostState> build() async {
    return _fetchData();
  }

  Future<PostState> _fetchData() async {
    final posts = await ref.watch(postRepositoryProvider).getPostList(start: 0);
    return PostState(currentIndex: posts.last.id, posts: posts);
  }

  Future<void> loadMore() async {
    final value = state.valueOrNull;

    if (value != null) {
      if (value.hasReachEnd) return;
      if (!value.isLoading) {
        state = AsyncValue.data(value.copyWith(isLoading: true));

        state = await AsyncValue.guard(() async {
          final posts = await ref
              .watch(postRepositoryProvider)
              .getPostList(start: value.currentIndex);

          return value.copyWith(
              isLoading: false,
              hasReachEnd: posts.isEmpty,
              currentIndex: posts.isEmpty ? value.posts.last.id : posts.last.id,
              posts: [...value.posts, ...posts]);
        });
      }
    }
  }
}
