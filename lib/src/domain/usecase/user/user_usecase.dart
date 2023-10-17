part of '../usecase.dart';

@riverpod
Future<UserEntity> getUserDetail(GetUserDetailRef ref,
    {required int id}) async {
  final repository = ref.watch(userRepositoryProvider);
  return await repository.getUserDetail(id: id);
}
