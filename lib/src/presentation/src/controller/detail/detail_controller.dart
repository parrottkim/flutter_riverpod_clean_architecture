part of '../controller.dart';

@riverpod
class DetailController extends _$DetailController {
  @override
  FutureOr<DetailState> build({required int id}) {
    return _fetchData(id: id);
  }

  Future<DetailState> _fetchData({required int id}) async {
    final post = await ref.watch(postRepositoryProvider).getPostDetail(id: id);
    final user =
        await ref.watch(userRepositoryProvider).getUserDetail(id: post.userId);
    return DetailState(post: post, user: user, comments: []);
  }
}
