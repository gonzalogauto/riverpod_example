// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dioRefHash() => r'c20b193f2f2fe2ce2d1f1aa909b940f5467b4c89';

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

abstract class _$DioRef extends BuildlessAutoDisposeNotifier<Dio> {
  late final String baseUrl;

  Dio build({
    required String baseUrl,
  });
}

/// [DioRef] provider that returns an instance of [Dio]
///
/// Copied from [DioRef].
@ProviderFor(DioRef)
const dioRefProvider = DioRefFamily();

/// [DioRef] provider that returns an instance of [Dio]
///
/// Copied from [DioRef].
class DioRefFamily extends Family<Dio> {
  /// [DioRef] provider that returns an instance of [Dio]
  ///
  /// Copied from [DioRef].
  const DioRefFamily();

  /// [DioRef] provider that returns an instance of [Dio]
  ///
  /// Copied from [DioRef].
  DioRefProvider call({
    required String baseUrl,
  }) {
    return DioRefProvider(
      baseUrl: baseUrl,
    );
  }

  @override
  DioRefProvider getProviderOverride(
    covariant DioRefProvider provider,
  ) {
    return call(
      baseUrl: provider.baseUrl,
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
  String? get name => r'dioRefProvider';
}

/// [DioRef] provider that returns an instance of [Dio]
///
/// Copied from [DioRef].
class DioRefProvider extends AutoDisposeNotifierProviderImpl<DioRef, Dio> {
  /// [DioRef] provider that returns an instance of [Dio]
  ///
  /// Copied from [DioRef].
  DioRefProvider({
    required this.baseUrl,
  }) : super.internal(
          () => DioRef()..baseUrl = baseUrl,
          from: dioRefProvider,
          name: r'dioRefProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$dioRefHash,
          dependencies: DioRefFamily._dependencies,
          allTransitiveDependencies: DioRefFamily._allTransitiveDependencies,
        );

  final String baseUrl;

  @override
  bool operator ==(Object other) {
    return other is DioRefProvider && other.baseUrl == baseUrl;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, baseUrl.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Dio runNotifierBuild(
    covariant DioRef notifier,
  ) {
    return notifier.build(
      baseUrl: baseUrl,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
