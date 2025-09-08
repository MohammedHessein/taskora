import 'package:hive/hive.dart';
import 'package:taskora/core/constants/cache_constants.dart';
import 'package:taskora/core/shared/models/user_model.dart';

class UserCacheService {
  static const String _boxName = CacheConstants.userBoxName;

  static Future<void> saveUser(UserModel user) async {
    final box = await Hive.openBox<UserModel>(_boxName);
    await box.put(CacheConstants.currentUser, user);
  }

  static Future<UserModel?> getUser() async {
    final box = await Hive.openBox<UserModel>(_boxName);
    return box.get(CacheConstants.currentUser);
  }

  static Future<void> deleteUser() async {
    final box = await Hive.openBox<UserModel>(_boxName);
    await box.delete(CacheConstants.currentUser);
  }

  static Future<void> clearAll() async {
    final box = await Hive.openBox<UserModel>(_boxName);
    await box.clear();
  }
}
