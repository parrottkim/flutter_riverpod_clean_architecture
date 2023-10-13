part of '../source.dart';

@RestApi()
abstract class UserService {
  factory UserService(Dio dio, {String baseUrl}) = _UserService;

  @GET('users/{id}')
  Future<User> getUserDetail({
    @Path('id') required int id,
  });
}
