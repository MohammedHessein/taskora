import 'package:hive_flutter/hive_flutter.dart';
import 'package:taskora/core/constants/cache_constants.dart';
import 'package:taskora/core/database/hive_service.dart';
import 'package:taskora/core/database/test_model.dart';
import 'package:taskora/core/shared/models/user_model.dart';

// Import the abstract HiveService

/// NativeHiveService is a concrete implementation of the HiveService abstract class.
/// It manages Hive initialization, CRUD operations, and registering Hive adapters.
class NativeHiveService extends HiveService {
  final String _boxName =
      "TestDataBase"; // The name of the Hive box used for storing data

  /// Initializes Hive for Flutter and registers custom adapters for your data types.
  @override
  Future<void> init() async {
    // Initialize Hive for Flutter
    await Hive.initFlutter();

    // Register all necessary adapters
    await _registerAdapters();

    // Open the box for storing DBTestModel objects
    await Hive.openBox<DBTestModel>(_boxName);
    await Hive.openBox<UserModel>(CacheConstants.userBoxName);
  }

  /// Registers custom adapters for Hive, such as the DBTestModelAdapter.
  /// Adapters allow Hive to handle custom objects.
  static Future<void> _registerAdapters() async {
    Hive
      ..registerAdapter(DBTestModelAdapter())
      ..registerAdapter(UserModelAdapter());
    // You can register more adapters here if needed
  }

  /// Opens the Hive box for DBTestModel objects.
  /// Returns the box instance to interact with the stored data.
  Future<Box<DBTestModel>> get _box async => Hive.box<DBTestModel>(_boxName);

  /// CRUD System (Create, Read, Update, Delete)

  /// Adds a DBTestModel object to the Hive box.
  @override
  Future<void> addObject(DBTestModel object) async {
    final box = await _box; // Get the opened box
    await box.add(object); // Add the object to the box
  }

  /// Retrieves all objects from the Hive box and returns them as a list.
  @override
  Future<List<DBTestModel>> getAllObjects() async {
    final box = await _box; // Get the opened box
    return box.values.toList(); // Convert all values in the box to a list
  }

  /// Retrieves an object at a specific index in the Hive box.
  @override
  Future<void> getAt(int index) async {
    final box = await _box; // Get the opened box
    box.getAt(index); // Get the object at the specified index
  }

  /// Updates an object at a specific index in the Hive box.
  @override
  Future<void> updateObject(int index, DBTestModel object) async {
    final box = await _box; // Get the opened box
    await box.putAt(index, object); // Update the object at the index
  }

  /// Deletes an object from the Hive box at the specified index.
  @override
  Future<void> deleteObject(int index) async {
    final box = await _box; // Get the opened box
    await box.deleteAt(index); // Delete the object at the index
  }
}
