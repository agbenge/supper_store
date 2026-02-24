import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:store/data/api_service.dart';
import 'package:store/data/local_db.dart';

final dioProvider = Provider((ref) {
  final dio = Dio();
  // Add interceptors for logging or auth if needed
  dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
  return dio;
});

final apiServiceProvider = Provider((ref) {
  final dio = ref.watch(dioProvider);
  return ApiService(dio);
});

final localDatabaseProvider = Provider((ref) {
  final db = LocalDatabase();
  ref.onDispose(() => db.close());
  return db;
});
