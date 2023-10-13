part of '../source.dart';

abstract class UserDataSource {
  Future<User> getUserDetail({required int id});
}
