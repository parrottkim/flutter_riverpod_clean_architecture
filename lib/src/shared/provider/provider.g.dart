// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$httpHash() => r'2b3b469736a05d4318f385e3777de9a349f470d0';

/// See also [http].
@ProviderFor(http)
final httpProvider = AutoDisposeProvider<Dio>.internal(
  http,
  name: r'httpProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$httpHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HttpRef = AutoDisposeProviderRef<Dio>;
String _$dummyInterceptorHash() => r'21f53355747dfabf9da297d130f4a6aa79eb477d';

/// See also [dummyInterceptor].
@ProviderFor(dummyInterceptor)
final dummyInterceptorProvider =
    AutoDisposeProvider<InterceptorsWrapper>.internal(
  dummyInterceptor,
  name: r'dummyInterceptorProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$dummyInterceptorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DummyInterceptorRef = AutoDisposeProviderRef<InterceptorsWrapper>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
