import 'package:taskora/core/database/hive_native.dart';
import 'package:taskora/core/database/test_model.dart';

/// HiveFactory is a factory class that creates and initializes the HiveService
/// It ensures that Hive is only initialized once throughout the app's lifecycle.
class HiveFactory {
  static bool _initComplete = false;

  /// Creates an instance of HiveService (NativeHiveService in this case).
  /// This ensures that Hive is initialized before returning the service.
  static Future<HiveService> create() async {
    final HiveService service = NativeHiveService();

    // Ensure Hive initialization happens only once
    if (!_initComplete) {
      await service.init(); // Calls the init method to set up Hive
      _initComplete = true;
    }

    return service; // Return the initialized service
  }
}

/// HiveService is an abstract class that defines the blueprint for
/// Hive operations such as initialization, adding, retrieving, and deleting data.
abstract class HiveService {
  /// Initializes Hive and performs any necessary setup.
  Future<void> init();

  /// CRUD System (Create, Read, Update, Delete)

  /// Adds a DBTestModel object to the Hive box.
  Future<void> addObject(DBTestModel object);

  /// Retrieves all DBTestModel objects from the Hive box.
  Future<List<DBTestModel>> getAllObjects();

  /// Retrieves an object from the Hive box at the specified index.
  Future<void> getAt(int index);

  /// Updates an object in the Hive box at the specified index.
  Future<void> updateObject(int index, DBTestModel object);

  /// Deletes an object from the Hive box at the specified index.
  Future<void> deleteObject(int index);
}
