part of '../source.dart';

abstract class UserDataSource {
  Future<UserModel> getUserDetail({required int id});
}
