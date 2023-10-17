part of '../controller.dart';

@riverpod
class DetailController extends _$DetailController {
  @override
  FutureOr<DetailState> build({required int id}) {
    return _fetchData(id: id);
  }

  Future<DetailState> _fetchData({required int id}) async {
    final post = await ref.watch(getPostDetailProvider(id: id).future);
    final user = await ref.watch(getUserDetailProvider(id: post.userId).future);
    return DetailState(post: post, user: user, comments: []);
  }
}
