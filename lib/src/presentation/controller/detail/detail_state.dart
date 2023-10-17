part of '../controller.dart';

@freezed
class DetailState with _$DetailState {
  factory DetailState({
    required UserEntity user,
    required PostEntity post,
    required List comments,
  }) = _DetailState;
}
