import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taskora/core/dependency_injection/injector.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/service/location_service.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/generated/assets.dart';
import 'package:toastification/toastification.dart';

class GoogleMapsWidget extends StatefulWidget {
  const GoogleMapsWidget({super.key});

  @override
  State<GoogleMapsWidget> createState() => _GoogleMapsWidgetState();
}

class _GoogleMapsWidgetState extends State<GoogleMapsWidget> {
  late GoogleMapController mapController;
  final LocationService _locationService = di<LocationService>();

  static const CameraPosition _ksaPosition = CameraPosition(
    target: LatLng(23.886292, 45.081139),
    zoom: 5,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 351.h,
      width: double.infinity,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: GoogleMap(
              onMapCreated: (controller) {
                mapController = controller;
                mapController.animateCamera(
                  CameraUpdate.newCameraPosition(_ksaPosition),
                );
              },
              zoomControlsEnabled: false,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              initialCameraPosition: _ksaPosition,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
              child: FloatingActionButton.extended(
                icon: SvgPicture.asset(
                  Assets.svgsLocation,
                  colorFilter: const ColorFilter.mode(
                    AppColors.white,
                    BlendMode.srcIn,
                  ),
                ),
                label: Text(
                  context.tr.select_location,
                  style: CustomTextStyle.kTextStyleF14.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () async {
                  try {
                    final locData = await _locationService.getLocation();
                    if (locData.latitude != null && locData.longitude != null) {
                      unawaited(
                        mapController.animateCamera(
                          CameraUpdate.newLatLngZoom(
                            LatLng(locData.latitude!, locData.longitude!),
                            14,
                          ),
                        ),
                      );
                    }
                  } catch (e) {
                    if (context.mounted) {
                      context.defaultSnackBar(
                        title: context.tr.error,
                        description: context.tr.failed_to_select_location,
                        type: ToastificationType.error,
                      );
                    }
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
