import 'package:hive_flutter/hive_flutter.dart';

import 'storage_service.dart';

/// Implementation of [StorageService] with [Hive]
class HiveStorageService extends StorageService {
  late Box<dynamic> hiveBox;

  @override
  Future<void> init() async {
    await Hive.initFlutter();
    hiveBox = await Hive.openBox('box');
  }

  @override
  Object? getValue(String key) => hiveBox.get(key) as Object?;

  @override
  Future<void> setValue({required String key, required Object? data}) async {
    hiveBox.put(key, data);
  }

  @override
  Future<void> deleteValue(String key) async => hiveBox.delete(key);

  @override
  Future<void> clear() async => hiveBox.clear();
}
