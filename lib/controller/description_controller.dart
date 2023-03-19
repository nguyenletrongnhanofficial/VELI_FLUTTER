import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DescriptionController extends GetxController {
  Rxn<GoogleMapController> mapController = Rxn();
  Rxn<Position> currentPosition = Rxn();
  RxString location = "Gần trường ĐH khoa học xã hội nhân văn".obs;

  CameraPosition kGooglePlex = const CameraPosition(
    // target: LatLng(10.871986246084873, 106.80218432839793),
    target: LatLng(0,0),
  );

  RxSet<Marker> markers = <Marker>{}.obs;

  @override
  void onInit() async {
    super.onInit();
    var initMarker = const Marker(
      markerId: MarkerId('default'),
      position: LatLng(10.871986246084873, 106.80218432839793),
      icon: BitmapDescriptor.defaultMarker,
    );
    markers.assign(initMarker);
    await getCurrentLocation();
  }

  @override
  void dispose() {
    mapController.value?.dispose();
    super.dispose();
  }

  getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied, we cannot request permissions.');
    }
    await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    ).then((Position position) async {
      currentPosition.value = position;

      mapController.value?.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(position.latitude, position.longitude),
            zoom: 18.0,
          ),
        ),
      );
    });
  }
}
