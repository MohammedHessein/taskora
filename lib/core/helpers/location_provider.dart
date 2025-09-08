import 'package:taskora/core/constants/cache_constants.dart';
import 'package:taskora/core/dependency_injection/injector.dart';
import 'package:taskora/core/helpers/cache_helper.dart';
import 'package:taskora/core/service/location_service.dart';

class LocationProvider {
  static Future<String> getLocation() async {
    final cached = await CacheHelper.getData(CacheConstants.userLocation);

    if (cached != null && cached is String && cached.isNotEmpty) {
      return cached;
    }

    final locationService = di<LocationService>();
    final location = await locationService.getReadableLocation();

    await CacheHelper.setData(CacheConstants.userLocation, location);
    return location;
  }
}
