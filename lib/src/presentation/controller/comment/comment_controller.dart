part of '../controller.dart';

@riverpod
class CommentController extends _$CommentController {
  @override
  FutureOr<CommentState> build({required int postId}) async {
    return _fetchData(postId: postId);
  }

  Future<CommentState> _fetchData({required int postId}) async {
    final comments =
        await ref.watch(getInitialCommentsProvider(postId: postId).future);
    return CommentState(currentIndex: comments.last.id, comments: comments);
  }
}
