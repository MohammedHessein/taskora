// ignore_for_file: use_setters_to_change_properties

import 'package:taskora/core/shared/models/user_model.dart';

/// A utility class for managing a static instance of [UserData].
///
/// Provides methods for serializing and deserializing [UserData] objects,
/// as well as a getter and setter for accessing and modifying the static instance.
///
/// ## Usage
///
/// To deserialize a [UserData] object from JSON, use [fromJson].
/// To serialize the current [UserData] instance to JSON, use [toJson].
/// To access the current [UserData] instance, use [instance].
/// To manually set the [UserData] instance, use [setInstance].
///
/// ## Methods
///
/// * [fromJson] - Deserializes a [UserData] object from a JSON map.
/// * [toJson] - Serializes the current [UserData] instance to a JSON map.
/// * [instance] - Returns the current [UserData] instance.
/// * [setInstance] - Manually sets the [UserData] instance.

class UserModelUtils {
  // A static instance of UserData
  static UserModel? _instance;

  // Getter to access the static instance
  static UserModel? get instance => _instance;

  // Method to deserialize from JSON and store the result in the static instance
  static void fromJson(Map<String, dynamic> json) {
    _instance = UserModel.fromJson(json);
  }

  // Method to serialize the static instance to JSON
  static Map<String, dynamic>? toJson() {
    return _instance?.toJson();
  }

  // Method to manually set the static instance
  static void setInstance(UserModel instance) {
    _instance = instance;
  }
}
