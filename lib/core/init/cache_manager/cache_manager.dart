import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

///Type of the boxes we have in the app
enum BoxType { authBox }

///All the keys we have in  the app to store in cache
enum BoxKey { authInfo }

class _CacheManager {

  _CacheManager(this.boxName) {
    box = Hive.box(boxName);
  }
  String boxName;
  late Box<dynamic> box;

  T? readModelFromBox<T>(BoxKey boxKey) {
    return box.get(boxKey.name) as T?;
  }

  Future<void> writeModelToBox<T>(BoxKey boxKey, T model) async {
    await box.put(boxKey.name, model);
  }

  Future<void> clearBox() async {
    await box.clear();
  }
}

final cacheManagerProvider = Provider.family((ref, BoxType boxType) => _CacheManager(boxType.name));