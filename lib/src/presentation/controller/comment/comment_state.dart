part of '../controller.dart';

@freezed
sealed class CommentState with _$CommentState {
  factory CommentState({
    @Default(false) bool isLoading,
    @Default(0) int currentIndex,
    @Default([]) List<CommentEntity> comments,
    @Default(false) bool hasReachEnd,
  }) = _CommentState;
}
