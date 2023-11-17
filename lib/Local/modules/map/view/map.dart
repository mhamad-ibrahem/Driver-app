import 'package:driver_app/Global/Core/Constant/Size.dart';
import 'package:driver_app/Local/Core/Constant/TextStyles.dart';
import 'package:driver_app/Local/Widget/CustomBackButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../controller/map_controller.dart';
import '../../../Core/Constant/Colors.dart';
import '../../../Widget/CustomButton.dart';

class Map extends StatelessWidget {
  Map({super.key});
  final MapController mapController = Get.find();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: GetBuilder<MapController>(
        builder: (mapController) => Stack(
          children: [
            SizedBox(
              height: AppSize.screenHight,
              width: AppSize.screenWidth,
              child: mapController.kGooglePlex != null
                  ? GoogleMap(
                      mapType: MapType.normal,
                      markers: mapController.driverMarker.toSet(),
                      initialCameraPosition: mapController.kGooglePlex!,
                      polylines:
                          Set<Polyline>.of(mapController.polylines.values),
                      onMapCreated: (GoogleMapController controllermap) {
                        mapController.controller.complete(controllermap);
                        mapController.googleMapController = controllermap;
                        mapController.update();
                        Geolocator.getPositionStream()
                            .listen((Position position) {
                          mapController.changeDriverMarker(
                              position.latitude, position.longitude);
                        });
                        mapController.getPolyline();
                      },
                    )
                  : const Center(
                      child: CircularProgressIndicator(
                      color: AppColors.primary,
                    )),
            ),
            Positioned(
              bottom: 10.h,
              left: 35.w,
              child: CustomButton(
                  buttonBody: "Complete",
                  onTap: () {
                    print(mapController.position!.latitude);
                    print(mapController.position!.longitude);
                    // Get.toNamed(AppRoute.completeOrder);
                  },
                  buttonWidth: AppSize.screenWidth * 0.7),
            ),
            Row(
              children: [
                const CustomBackButton(),
                SizedBox(
                  width: 120.w,
                ),
                Text(
                  "Map",
                  style: purpleTextStyle(false),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
