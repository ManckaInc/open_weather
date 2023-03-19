import 'package:geolocator/geolocator.dart';

class CurrentLocation {
  double? latitude;
  double? longitude;

  Future<void> getCurrentLocation() async {
    try {
      await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      // print(e);
    }
  }
}
