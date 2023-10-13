part of '../repository.dart';

abstract class UserRepository {
  Future<User> getUserDetail({required int id});
}
