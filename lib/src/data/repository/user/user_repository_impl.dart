part of '../repository.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl({required UserDataSource source}) : _source = source;

  final UserDataSource _source;

  @override
  Future<UserEntity> getUserDetail({required int id}) async {
    final model = await _source.getUserDetail(id: id);
    return model.toEntity();
  }
}

@riverpod
UserRepository userRepository(UserRepositoryRef ref) {
  final source = ref.watch(userDataSourceProvider);
  return UserRepositoryImpl(source: source);
}
