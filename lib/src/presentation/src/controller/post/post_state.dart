part of '../controller.dart';

@freezed
sealed class PostState with _$PostState {
  factory PostState({
    @Default(false) bool isLoading,
    @Default(0) int currentIndex,
    @Default([]) List<Post> posts,
    @Default(false) bool hasReachEnd,
  }) = _PostState;
}
