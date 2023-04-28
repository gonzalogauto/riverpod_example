import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio.g.dart';

/// [DioRef] provider that returns an instance of [Dio]
@riverpod
class DioRef extends _$DioRef {
  @override
  Dio build({required String baseUrl}) {
    return Dio(
      BaseOptions(
        baseUrl: baseUrl,
      ),
    );
  }
}
