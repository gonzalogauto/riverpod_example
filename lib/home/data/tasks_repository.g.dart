// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tasksRepositoryRefHash() =>
    r'2cfcd10a5d231cf5051e243a852ea49527a819e1';

/// [TasksRepositoryRef] provider that returns an instance of [TasksRepository]
///
/// Copied from [TasksRepositoryRef].
@ProviderFor(TasksRepositoryRef)
final tasksRepositoryRefProvider =
    AutoDisposeNotifierProvider<TasksRepositoryRef, TasksRepository>.internal(
  TasksRepositoryRef.new,
  name: r'tasksRepositoryRefProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$tasksRepositoryRefHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TasksRepositoryRef = AutoDisposeNotifier<TasksRepository>;
String _$fetchTasksRefHash() => r'012eab344817de7d662f32f193d3eb96e156bed4';

/// [FetchTasksRef] provider that returns a List of [Task]
///
/// Copied from [FetchTasksRef].
@ProviderFor(FetchTasksRef)
final fetchTasksRefProvider =
    AutoDisposeAsyncNotifierProvider<FetchTasksRef, List<Task>>.internal(
  FetchTasksRef.new,
  name: r'fetchTasksRefProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchTasksRefHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FetchTasksRef = AutoDisposeAsyncNotifier<List<Task>>;
String _$fetchTasksByIdRefHash() => r'359d2543d691e43bc93a036ec5706856fcae224c';

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

abstract class _$FetchTasksByIdRef
    extends BuildlessAutoDisposeAsyncNotifier<Task> {
  late final int taskId;

  Future<Task> build({
    required int taskId,
  });
}

/// [FetchTasksByIdRef] provider that returns a [Task] by the given id
///
/// Copied from [FetchTasksByIdRef].
@ProviderFor(FetchTasksByIdRef)
const fetchTasksByIdRefProvider = FetchTasksByIdRefFamily();

/// [FetchTasksByIdRef] provider that returns a [Task] by the given id
///
/// Copied from [FetchTasksByIdRef].
class FetchTasksByIdRefFamily extends Family<AsyncValue<Task>> {
  /// [FetchTasksByIdRef] provider that returns a [Task] by the given id
  ///
  /// Copied from [FetchTasksByIdRef].
  const FetchTasksByIdRefFamily();

  /// [FetchTasksByIdRef] provider that returns a [Task] by the given id
  ///
  /// Copied from [FetchTasksByIdRef].
  FetchTasksByIdRefProvider call({
    required int taskId,
  }) {
    return FetchTasksByIdRefProvider(
      taskId: taskId,
    );
  }

  @override
  FetchTasksByIdRefProvider getProviderOverride(
    covariant FetchTasksByIdRefProvider provider,
  ) {
    return call(
      taskId: provider.taskId,
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
  String? get name => r'fetchTasksByIdRefProvider';
}

/// [FetchTasksByIdRef] provider that returns a [Task] by the given id
///
/// Copied from [FetchTasksByIdRef].
class FetchTasksByIdRefProvider
    extends AutoDisposeAsyncNotifierProviderImpl<FetchTasksByIdRef, Task> {
  /// [FetchTasksByIdRef] provider that returns a [Task] by the given id
  ///
  /// Copied from [FetchTasksByIdRef].
  FetchTasksByIdRefProvider({
    required this.taskId,
  }) : super.internal(
          () => FetchTasksByIdRef()..taskId = taskId,
          from: fetchTasksByIdRefProvider,
          name: r'fetchTasksByIdRefProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchTasksByIdRefHash,
          dependencies: FetchTasksByIdRefFamily._dependencies,
          allTransitiveDependencies:
              FetchTasksByIdRefFamily._allTransitiveDependencies,
        );

  final int taskId;

  @override
  bool operator ==(Object other) {
    return other is FetchTasksByIdRefProvider && other.taskId == taskId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, taskId.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<Task> runNotifierBuild(
    covariant FetchTasksByIdRef notifier,
  ) {
    return notifier.build(
      taskId: taskId,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
