part of '../repository.dart';

abstract class UserRepository {
  Future<UserEntity> getUserDetail({required int id});
}
