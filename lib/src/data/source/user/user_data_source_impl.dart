part of '../source.dart';

class UserDataSourceImpl implements UserDataSource {
  UserDataSourceImpl({required UserService service}) : _service = service;

  final UserService _service;

  @override
  Future<User> getUserDetail({required int id}) =>
      _service.getUserDetail(id: id);
}

@riverpod
UserDataSource userDataSource(UserDataSourceRef ref) {
  final http = ref.watch(httpProvider);
  return UserDataSourceImpl(service: UserService(http));
}
