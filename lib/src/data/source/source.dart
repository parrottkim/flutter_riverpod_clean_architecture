import 'package:dio/dio.dart';
import 'package:flutter_riverpod_clean_architecture/src/model/model.dart';
import 'package:flutter_riverpod_clean_architecture/src/shared/provider/provider.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'source.g.dart';

part 'comment/comment_data_source.dart';
part 'comment/comment_data_source_impl.dart';
part 'comment/comment_service.dart';
part 'post/post_data_source.dart';
part 'post/post_data_source_impl.dart';
part 'post/post_service.dart';
part 'user/user_data_source.dart';
part 'user/user_data_source_impl.dart';
part 'user/user_service.dart';
