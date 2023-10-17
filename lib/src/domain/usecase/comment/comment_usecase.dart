part of '../usecase.dart';

@riverpod
Future<List<CommentEntity>> getInitialComments(GetInitialCommentsRef ref,
    {required int postId}) async {
  final repository = ref.watch(commentRepositoryProvider);
  return await repository.getCommentList(postId: postId);
}
