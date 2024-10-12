import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'hive_storage_service.dart';

final storageServiceProvider = Provider<StorageService>(
  (_) => HiveStorageService(),
);

/// Abstract class defining [StorageService] structure
abstract class StorageService {
  Future<void> init();

  /// Get value by key
  Object? getValue(String key);

  /// Store new value
  Future<void> setValue({required String key, required Object? data});

  /// Delete value by key
  Future<void> deleteValue(String key);

  /// Clear storage
  Future<void> clear();
}
