// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$commentControllerHash() => r'20213068c8e652c25617e0da000327ff913c2c9e';

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

abstract class _$CommentController
    extends BuildlessAutoDisposeAsyncNotifier<CommentState> {
  late final int postId;

  FutureOr<CommentState> build({
    required int postId,
  });
}

/// See also [CommentController].
@ProviderFor(CommentController)
const commentControllerProvider = CommentControllerFamily();

/// See also [CommentController].
class CommentControllerFamily extends Family<AsyncValue<CommentState>> {
  /// See also [CommentController].
  const CommentControllerFamily();

  /// See also [CommentController].
  CommentControllerProvider call({
    required int postId,
  }) {
    return CommentControllerProvider(
      postId: postId,
    );
  }

  @override
  CommentControllerProvider getProviderOverride(
    covariant CommentControllerProvider provider,
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
  String? get name => r'commentControllerProvider';
}

/// See also [CommentController].
class CommentControllerProvider extends AutoDisposeAsyncNotifierProviderImpl<
    CommentController, CommentState> {
  /// See also [CommentController].
  CommentControllerProvider({
    required int postId,
  }) : this._internal(
          () => CommentController()..postId = postId,
          from: commentControllerProvider,
          name: r'commentControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$commentControllerHash,
          dependencies: CommentControllerFamily._dependencies,
          allTransitiveDependencies:
              CommentControllerFamily._allTransitiveDependencies,
          postId: postId,
        );

  CommentControllerProvider._internal(
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
  FutureOr<CommentState> runNotifierBuild(
    covariant CommentController notifier,
  ) {
    return notifier.build(
      postId: postId,
    );
  }

  @override
  Override overrideWith(CommentController Function() create) {
    return ProviderOverride(
      origin: this,
      override: CommentControllerProvider._internal(
        () => create()..postId = postId,
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
  AutoDisposeAsyncNotifierProviderElement<CommentController, CommentState>
      createElement() {
    return _CommentControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CommentControllerProvider && other.postId == postId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CommentControllerRef
    on AutoDisposeAsyncNotifierProviderRef<CommentState> {
  /// The parameter `postId` of this provider.
  int get postId;
}

class _CommentControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<CommentController,
        CommentState> with CommentControllerRef {
  _CommentControllerProviderElement(super.provider);

  @override
  int get postId => (origin as CommentControllerProvider).postId;
}

String _$detailControllerHash() => r'441dfb4669024cad0348a633a0590b2dfeac729e';

abstract class _$DetailController
    extends BuildlessAutoDisposeAsyncNotifier<DetailState> {
  late final int id;

  FutureOr<DetailState> build({
    required int id,
  });
}

/// See also [DetailController].
@ProviderFor(DetailController)
const detailControllerProvider = DetailControllerFamily();

/// See also [DetailController].
class DetailControllerFamily extends Family<AsyncValue<DetailState>> {
  /// See also [DetailController].
  const DetailControllerFamily();

  /// See also [DetailController].
  DetailControllerProvider call({
    required int id,
  }) {
    return DetailControllerProvider(
      id: id,
    );
  }

  @override
  DetailControllerProvider getProviderOverride(
    covariant DetailControllerProvider provider,
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
  String? get name => r'detailControllerProvider';
}

/// See also [DetailController].
class DetailControllerProvider extends AutoDisposeAsyncNotifierProviderImpl<
    DetailController, DetailState> {
  /// See also [DetailController].
  DetailControllerProvider({
    required int id,
  }) : this._internal(
          () => DetailController()..id = id,
          from: detailControllerProvider,
          name: r'detailControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$detailControllerHash,
          dependencies: DetailControllerFamily._dependencies,
          allTransitiveDependencies:
              DetailControllerFamily._allTransitiveDependencies,
          id: id,
        );

  DetailControllerProvider._internal(
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
  FutureOr<DetailState> runNotifierBuild(
    covariant DetailController notifier,
  ) {
    return notifier.build(
      id: id,
    );
  }

  @override
  Override overrideWith(DetailController Function() create) {
    return ProviderOverride(
      origin: this,
      override: DetailControllerProvider._internal(
        () => create()..id = id,
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
  AutoDisposeAsyncNotifierProviderElement<DetailController, DetailState>
      createElement() {
    return _DetailControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DetailControllerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DetailControllerRef on AutoDisposeAsyncNotifierProviderRef<DetailState> {
  /// The parameter `id` of this provider.
  int get id;
}

class _DetailControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<DetailController,
        DetailState> with DetailControllerRef {
  _DetailControllerProviderElement(super.provider);

  @override
  int get id => (origin as DetailControllerProvider).id;
}

String _$postControllerHash() => r'c2704bdcd27e67b9534efdfba6ec8a307823118f';

/// See also [PostController].
@ProviderFor(PostController)
final postControllerProvider =
    AutoDisposeAsyncNotifierProvider<PostController, PostState>.internal(
  PostController.new,
  name: r'postControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$postControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PostController = AutoDisposeAsyncNotifier<PostState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
