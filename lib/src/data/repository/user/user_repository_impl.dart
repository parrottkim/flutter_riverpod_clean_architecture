part of '../repository.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl({required UserDataSource source}) : _source = source;

  final UserDataSource _source;

  @override
  Future<User> getUserDetail({required int id}) =>
      _source.getUserDetail(id: id);
}

@riverpod
UserRepository userRepository(UserRepositoryRef ref) {
  final source = ref.watch(userDataSourceProvider);
  return UserRepositoryImpl(source: source);
}
