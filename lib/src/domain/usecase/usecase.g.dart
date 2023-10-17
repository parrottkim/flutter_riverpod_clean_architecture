// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getInitialCommentsHash() =>
    r'e90901745b64a16f6cdd3858efac2b2373677140';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [getInitialComments].
@ProviderFor(getInitialComments)
const getInitialCommentsProvider = GetInitialCommentsFamily();

/// See also [getInitialComments].
class GetInitialCommentsFamily extends Family<AsyncValue<List<CommentEntity>>> {
  /// See also [getInitialComments].
  const GetInitialCommentsFamily();

  /// See also [getInitialComments].
  GetInitialCommentsProvider call({
    required int postId,
  }) {
    return GetInitialCommentsProvider(
      postId: postId,
    );
  }

  @override
  GetInitialCommentsProvider getProviderOverride(
    covariant GetInitialCommentsProvider provider,
  ) {
    return call(
      postId: provider.postId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getInitialCommentsProvider';
}

/// See also [getInitialComments].
class GetInitialCommentsProvider
    extends AutoDisposeFutureProvider<List<CommentEntity>> {
  /// See also [getInitialComments].
  GetInitialCommentsProvider({
    required int postId,
  }) : this._internal(
          (ref) => getInitialComments(
            ref as GetInitialCommentsRef,
            postId: postId,
          ),
          from: getInitialCommentsProvider,
          name: r'getInitialCommentsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getInitialCommentsHash,
          dependencies: GetInitialCommentsFamily._dependencies,
          allTransitiveDependencies:
              GetInitialCommentsFamily._allTransitiveDependencies,
          postId: postId,
        );

  GetInitialCommentsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postId,
  }) : super.internal();

  final int postId;

  @override
  Override overrideWith(
    FutureOr<List<CommentEntity>> Function(GetInitialCommentsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetInitialCommentsProvider._internal(
        (ref) => create(ref as GetInitialCommentsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        postId: postId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<CommentEntity>> createElement() {
    return _GetInitialCommentsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetInitialCommentsProvider && other.postId == postId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetInitialCommentsRef
    on AutoDisposeFutureProviderRef<List<CommentEntity>> {
  /// The parameter `postId` of this provider.
  int get postId;
}

class _GetInitialCommentsProviderElement
    extends AutoDisposeFutureProviderElement<List<CommentEntity>>
    with GetInitialCommentsRef {
  _GetInitialCommentsProviderElement(super.provider);

  @override
  int get postId => (origin as GetInitialCommentsProvider).postId;
}

String _$getInitialPostsHash() => r'e5f42bf02995948c02e67da2bef552a9ea5ee41f';

/// See also [getInitialPosts].
@ProviderFor(getInitialPosts)
final getInitialPostsProvider =
    AutoDisposeFutureProvider<List<PostEntity>>.internal(
  getInitialPosts,
  name: r'getInitialPostsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getInitialPostsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetInitialPostsRef = AutoDisposeFutureProviderRef<List<PostEntity>>;
String _$getMorePostsHash() => r'e500e430450e3306ac5b13269cea33b278bbe6b7';

/// See also [getMorePosts].
@ProviderFor(getMorePosts)
const getMorePostsProvider = GetMorePostsFamily();

/// See also [getMorePosts].
class GetMorePostsFamily extends Family<AsyncValue<List<PostEntity>>> {
  /// See also [getMorePosts].
  const GetMorePostsFamily();

  /// See also [getMorePosts].
  GetMorePostsProvider call({
    required int start,
  }) {
    return GetMorePostsProvider(
      start: start,
    );
  }

  @override
  GetMorePostsProvider getProviderOverride(
    covariant GetMorePostsProvider provider,
  ) {
    return call(
      start: provider.start,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getMorePostsProvider';
}

/// See also [getMorePosts].
class GetMorePostsProvider extends AutoDisposeFutureProvider<List<PostEntity>> {
  /// See also [getMorePosts].
  GetMorePostsProvider({
    required int start,
  }) : this._internal(
          (ref) => getMorePosts(
            ref as GetMorePostsRef,
            start: start,
          ),
          from: getMorePostsProvider,
          name: r'getMorePostsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getMorePostsHash,
          dependencies: GetMorePostsFamily._dependencies,
          allTransitiveDependencies:
              GetMorePostsFamily._allTransitiveDependencies,
          start: start,
        );

  GetMorePostsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.start,
  }) : super.internal();

  final int start;

  @override
  Override overrideWith(
    FutureOr<List<PostEntity>> Function(GetMorePostsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetMorePostsProvider._internal(
        (ref) => create(ref as GetMorePostsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        start: start,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<PostEntity>> createElement() {
    return _GetMorePostsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetMorePostsProvider && other.start == start;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, start.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetMorePostsRef on AutoDisposeFutureProviderRef<List<PostEntity>> {
  /// The parameter `start` of this provider.
  int get start;
}

class _GetMorePostsProviderElement
    extends AutoDisposeFutureProviderElement<List<PostEntity>>
    with GetMorePostsRef {
  _GetMorePostsProviderElement(super.provider);

  @override
  int get start => (origin as GetMorePostsProvider).start;
}

String _$getPostDetailHash() => r'87d764c6f3dc593ee83328a49361a47dda2f383b';

/// See also [getPostDetail].
@ProviderFor(getPostDetail)
const getPostDetailProvider = GetPostDetailFamily();

/// See also [getPostDetail].
class GetPostDetailFamily extends Family<AsyncValue<PostEntity>> {
  /// See also [getPostDetail].
  const GetPostDetailFamily();

  /// See also [getPostDetail].
  GetPostDetailProvider call({
    required int id,
  }) {
    return GetPostDetailProvider(
      id: id,
    );
  }

  @override
  GetPostDetailProvider getProviderOverride(
    covariant GetPostDetailProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getPostDetailProvider';
}

/// See also [getPostDetail].
class GetPostDetailProvider extends AutoDisposeFutureProvider<PostEntity> {
  /// See also [getPostDetail].
  GetPostDetailProvider({
    required int id,
  }) : this._internal(
          (ref) => getPostDetail(
            ref as GetPostDetailRef,
            id: id,
          ),
          from: getPostDetailProvider,
          name: r'getPostDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPostDetailHash,
          dependencies: GetPostDetailFamily._dependencies,
          allTransitiveDependencies:
              GetPostDetailFamily._allTransitiveDependencies,
          id: id,
        );

  GetPostDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<PostEntity> Function(GetPostDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPostDetailProvider._internal(
        (ref) => create(ref as GetPostDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PostEntity> createElement() {
    return _GetPostDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPostDetailProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetPostDetailRef on AutoDisposeFutureProviderRef<PostEntity> {
  /// The parameter `id` of this provider.
  int get id;
}

class _GetPostDetailProviderElement
    extends AutoDisposeFutureProviderElement<PostEntity> with GetPostDetailRef {
  _GetPostDetailProviderElement(super.provider);

  @override
  int get id => (origin as GetPostDetailProvider).id;
}

String _$getUserDetailHash() => r'35d33c783456b496b2ba6f445c411ba50296468d';

/// See also [getUserDetail].
@ProviderFor(getUserDetail)
const getUserDetailProvider = GetUserDetailFamily();

/// See also [getUserDetail].
class GetUserDetailFamily extends Family<AsyncValue<UserEntity>> {
  /// See also [getUserDetail].
  const GetUserDetailFamily();

  /// See also [getUserDetail].
  GetUserDetailProvider call({
    required int id,
  }) {
    return GetUserDetailProvider(
      id: id,
    );
  }

  @override
  GetUserDetailProvider getProviderOverride(
    covariant GetUserDetailProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getUserDetailProvider';
}

/// See also [getUserDetail].
class GetUserDetailProvider extends AutoDisposeFutureProvider<UserEntity> {
  /// See also [getUserDetail].
  GetUserDetailProvider({
    required int id,
  }) : this._internal(
          (ref) => getUserDetail(
            ref as GetUserDetailRef,
            id: id,
          ),
          from: getUserDetailProvider,
          name: r'getUserDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getUserDetailHash,
          dependencies: GetUserDetailFamily._dependencies,
          allTransitiveDependencies:
              GetUserDetailFamily._allTransitiveDependencies,
          id: id,
        );

  GetUserDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<UserEntity> Function(GetUserDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetUserDetailProvider._internal(
        (ref) => create(ref as GetUserDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<UserEntity> createElement() {
    return _GetUserDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetUserDetailProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetUserDetailRef on AutoDisposeFutureProviderRef<UserEntity> {
  /// The parameter `id` of this provider.
  int get id;
}

class _GetUserDetailProviderElement
    extends AutoDisposeFutureProviderElement<UserEntity> with GetUserDetailRef {
  _GetUserDetailProviderElement(super.provider);

  @override
  int get id => (origin as GetUserDetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
