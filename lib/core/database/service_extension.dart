import 'package:taskora/core/database/hive_service.dart';
import 'package:taskora/core/database/test_model.dart';

/// AppHiveService is an extension on HiveService that provides additional methods
/// to interact with Hive specifically for project-related needs.
extension AppHiveService on HiveService {
  /// Saves a DBTestModel object to the Hive box.
  /// This utilizes the addObject method from HiveService.
  Future<void> saveObject(DBTestModel object) async {
    await addObject(object); // Call the addObject method from HiveService
  }

  /// Retrieves a DBTestModel object at a specific index in the Hive box.
  // DBTestModel? getObjectAtIndex(int index) {
  //   return getAt(index); // Call the getAt method from HiveService
  // }

  /// Clears all DBTestModel objects from the Hive box.
  Future<void> clearAllObjects() async {
    final objects = await getAllObjects(); // Retrieve all objects from the box

    // Loop through all objects and delete them one by one
    for (var i = 0; i < objects.length; i++) {
      await deleteObject(i);
    }
  }
}
