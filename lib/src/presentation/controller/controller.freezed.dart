// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommentState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  List<CommentEntity> get comments => throw _privateConstructorUsedError;
  bool get hasReachEnd => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentStateCopyWith<CommentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentStateCopyWith<$Res> {
  factory $CommentStateCopyWith(
          CommentState value, $Res Function(CommentState) then) =
      _$CommentStateCopyWithImpl<$Res, CommentState>;
  @useResult
  $Res call(
      {bool isLoading,
      int currentIndex,
      List<CommentEntity> comments,
      bool hasReachEnd});
}

/// @nodoc
class _$CommentStateCopyWithImpl<$Res, $Val extends CommentState>
    implements $CommentStateCopyWith<$Res> {
  _$CommentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? currentIndex = null,
    Object? comments = null,
    Object? hasReachEnd = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentEntity>,
      hasReachEnd: null == hasReachEnd
          ? _value.hasReachEnd
          : hasReachEnd // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentStateCopyWith<$Res>
    implements $CommentStateCopyWith<$Res> {
  factory _$$_CommentStateCopyWith(
          _$_CommentState value, $Res Function(_$_CommentState) then) =
      __$$_CommentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      int currentIndex,
      List<CommentEntity> comments,
      bool hasReachEnd});
}

/// @nodoc
class __$$_CommentStateCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$_CommentState>
    implements _$$_CommentStateCopyWith<$Res> {
  __$$_CommentStateCopyWithImpl(
      _$_CommentState _value, $Res Function(_$_CommentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? currentIndex = null,
    Object? comments = null,
    Object? hasReachEnd = null,
  }) {
    return _then(_$_CommentState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentEntity>,
      hasReachEnd: null == hasReachEnd
          ? _value.hasReachEnd
          : hasReachEnd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CommentState implements _CommentState {
  _$_CommentState(
      {this.isLoading = false,
      this.currentIndex = 0,
      final List<CommentEntity> comments = const [],
      this.hasReachEnd = false})
      : _comments = comments;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int currentIndex;
  final List<CommentEntity> _comments;
  @override
  @JsonKey()
  List<CommentEntity> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  @JsonKey()
  final bool hasReachEnd;

  @override
  String toString() {
    return 'CommentState(isLoading: $isLoading, currentIndex: $currentIndex, comments: $comments, hasReachEnd: $hasReachEnd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.hasReachEnd, hasReachEnd) ||
                other.hasReachEnd == hasReachEnd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, currentIndex,
      const DeepCollectionEquality().hash(_comments), hasReachEnd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentStateCopyWith<_$_CommentState> get copyWith =>
      __$$_CommentStateCopyWithImpl<_$_CommentState>(this, _$identity);
}

abstract class _CommentState implements CommentState {
  factory _CommentState(
      {final bool isLoading,
      final int currentIndex,
      final List<CommentEntity> comments,
      final bool hasReachEnd}) = _$_CommentState;

  @override
  bool get isLoading;
  @override
  int get currentIndex;
  @override
  List<CommentEntity> get comments;
  @override
  bool get hasReachEnd;
  @override
  @JsonKey(ignore: true)
  _$$_CommentStateCopyWith<_$_CommentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailState {
  UserEntity get user => throw _privateConstructorUsedError;
  PostEntity get post => throw _privateConstructorUsedError;
  List<dynamic> get comments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailStateCopyWith<DetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res, DetailState>;
  @useResult
  $Res call({UserEntity user, PostEntity post, List<dynamic> comments});

  $UserEntityCopyWith<$Res> get user;
  $PostEntityCopyWith<$Res> get post;
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res, $Val extends DetailState>
    implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? post = null,
    Object? comments = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostEntity,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PostEntityCopyWith<$Res> get post {
    return $PostEntityCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailStateCopyWith<$Res>
    implements $DetailStateCopyWith<$Res> {
  factory _$$_DetailStateCopyWith(
          _$_DetailState value, $Res Function(_$_DetailState) then) =
      __$$_DetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity user, PostEntity post, List<dynamic> comments});

  @override
  $UserEntityCopyWith<$Res> get user;
  @override
  $PostEntityCopyWith<$Res> get post;
}

/// @nodoc
class __$$_DetailStateCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$_DetailState>
    implements _$$_DetailStateCopyWith<$Res> {
  __$$_DetailStateCopyWithImpl(
      _$_DetailState _value, $Res Function(_$_DetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? post = null,
    Object? comments = null,
  }) {
    return _then(_$_DetailState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostEntity,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_DetailState implements _DetailState {
  _$_DetailState(
      {required this.user,
      required this.post,
      required final List<dynamic> comments})
      : _comments = comments;

  @override
  final UserEntity user;
  @override
  final PostEntity post;
  final List<dynamic> _comments;
  @override
  List<dynamic> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'DetailState(user: $user, post: $post, comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.post, post) || other.post == post) &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, user, post, const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailStateCopyWith<_$_DetailState> get copyWith =>
      __$$_DetailStateCopyWithImpl<_$_DetailState>(this, _$identity);
}

abstract class _DetailState implements DetailState {
  factory _DetailState(
      {required final UserEntity user,
      required final PostEntity post,
      required final List<dynamic> comments}) = _$_DetailState;

  @override
  UserEntity get user;
  @override
  PostEntity get post;
  @override
  List<dynamic> get comments;
  @override
  @JsonKey(ignore: true)
  _$$_DetailStateCopyWith<_$_DetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  List<PostEntity> get posts => throw _privateConstructorUsedError;
  bool get hasReachEnd => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostStateCopyWith<PostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res, PostState>;
  @useResult
  $Res call(
      {bool isLoading,
      int currentIndex,
      List<PostEntity> posts,
      bool hasReachEnd});
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res, $Val extends PostState>
    implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? currentIndex = null,
    Object? posts = null,
    Object? hasReachEnd = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostEntity>,
      hasReachEnd: null == hasReachEnd
          ? _value.hasReachEnd
          : hasReachEnd // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostStateCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory _$$_PostStateCopyWith(
          _$_PostState value, $Res Function(_$_PostState) then) =
      __$$_PostStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      int currentIndex,
      List<PostEntity> posts,
      bool hasReachEnd});
}

/// @nodoc
class __$$_PostStateCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$_PostState>
    implements _$$_PostStateCopyWith<$Res> {
  __$$_PostStateCopyWithImpl(
      _$_PostState _value, $Res Function(_$_PostState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? currentIndex = null,
    Object? posts = null,
    Object? hasReachEnd = null,
  }) {
    return _then(_$_PostState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostEntity>,
      hasReachEnd: null == hasReachEnd
          ? _value.hasReachEnd
          : hasReachEnd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PostState implements _PostState {
  _$_PostState(
      {this.isLoading = false,
      this.currentIndex = 0,
      final List<PostEntity> posts = const [],
      this.hasReachEnd = false})
      : _posts = posts;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int currentIndex;
  final List<PostEntity> _posts;
  @override
  @JsonKey()
  List<PostEntity> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  @JsonKey()
  final bool hasReachEnd;

  @override
  String toString() {
    return 'PostState(isLoading: $isLoading, currentIndex: $currentIndex, posts: $posts, hasReachEnd: $hasReachEnd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.hasReachEnd, hasReachEnd) ||
                other.hasReachEnd == hasReachEnd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, currentIndex,
      const DeepCollectionEquality().hash(_posts), hasReachEnd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostStateCopyWith<_$_PostState> get copyWith =>
      __$$_PostStateCopyWithImpl<_$_PostState>(this, _$identity);
}

abstract class _PostState implements PostState {
  factory _PostState(
      {final bool isLoading,
      final int currentIndex,
      final List<PostEntity> posts,
      final bool hasReachEnd}) = _$_PostState;

  @override
  bool get isLoading;
  @override
  int get currentIndex;
  @override
  List<PostEntity> get posts;
  @override
  bool get hasReachEnd;
  @override
  @JsonKey(ignore: true)
  _$$_PostStateCopyWith<_$_PostState> get copyWith =>
      throw _privateConstructorUsedError;
}
