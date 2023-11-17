import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

import '../../../../Global/Core/Class/StatusRequest.dart';
import '../../../../Global/Core/Constant/Colors.dart';

class MapController extends GetxController {
  StatusRequest statusRequest = StatusRequest.loading;
  Position? position;
  List<Marker> markerList = [];
  double? lat;
  double? lang;
  Set<Marker> driverMarker = {};
  GoogleMapController? googleMapController;
  Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];
  PolylinePoints polylinePoints = PolylinePoints();
  String googleAPiKey = "AIzaSyAapiKS50iy0w9xQ0oJlkP0bHqnDTyOzJ4";
  StreamSubscription<Position>? postionStream;
  final Completer<GoogleMapController> controller =
      Completer<GoogleMapController>();

  CameraPosition? kGooglePlex;

  CameraPosition kLake = const CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  getCurrentLocation() async {
    position = await Geolocator.getCurrentPosition();
    kGooglePlex = CameraPosition(
        target: LatLng(position!.latitude, position!.longitude), zoom: 14.32);
    statusRequest = StatusRequest.none;
    markerList.add(
      Marker(
          markerId: const MarkerId("1"),
          position: LatLng(position!.latitude, position!.longitude)),
    );

    update();
  }

  changeDriverMarker(newLat, newLong) {
    driverMarker.clear();
    driverMarker.add(Marker(
        markerId: const MarkerId("1"), position: LatLng(newLat, newLong)));
    googleMapController!
        .animateCamera(CameraUpdate.newLatLng(LatLng(newLat, newLong)));
    update();
  }

  addPolyLine() {
    PolylineId id = const PolylineId("poly");
    Polyline polyline = Polyline(
        polylineId: id, color: GlobalColors.red, points: polylineCoordinates);
    polylines[id] = polyline;
    update();
  }

  getPolyline() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        googleAPiKey,
        const PointLatLng(39.5299, -119.814), //source
        const PointLatLng(40.2721, -119.132), //destination
        travelMode: TravelMode.driving,
        wayPoints: [PolylineWayPoint(location: "Sabo, Yaba Lagos Nigeria")]);
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(const LatLng(37.2677669, -122.0705442));
        polylineCoordinates.add(const LatLng(37.452390, -122.235880));
        addPolyLine();
      });
    }
  }

  @override
  void onInit() {
    getCurrentLocation();

    super.onInit();
  }
}
