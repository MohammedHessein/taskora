import 'package:taskora/core/config/config.dart';

abstract class ApplicationConfig extends Config {}

class AppInitializer {
  AppInitializer(this._applicationConfig);

  final ApplicationConfig _applicationConfig;

  Future<void> init() async {
    await _applicationConfig.init();
  }
}
