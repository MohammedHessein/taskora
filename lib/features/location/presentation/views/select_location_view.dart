import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taskora/core/constants/cache_constants.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/helpers/cache_helper.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/location/presentation/widgets/google_maps/google_maps_widget.dart';
import 'package:toastification/toastification.dart';

class SelectLocationView extends StatefulWidget {
  const SelectLocationView({super.key});

  @override
  State<SelectLocationView> createState() => _SelectLocationViewState();
}

class _SelectLocationViewState extends State<SelectLocationView> {
  LatLng? _selectedLatLng;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(
            locationFuture: LocationProvider.getLocation(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.p16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GoogleMapsWidget(
                    onLocationSelected: (latLng) {
                      _selectedLatLng = latLng;
                    },
                  ),
                  hGap40,
                  ElevatedButton(
                    onPressed: () {
                      if (_selectedLatLng != null) {
                        CacheHelper.setData(
                          CacheConstants.selectedLocation,
                          _selectedLatLng,
                        );
                        context.pushReplacementNamed(Routes.navBar);
                      } else {
                        context.defaultSnackBar(
                          title: context.tr.error,
                          description:
                              context.tr.please_select_a_location_first,
                          type: ToastificationType.error,
                        );
                      }
                    },
                    child: Text(context.tr.common_confirm),
                  ),
                  hGap20,
                  ElevatedButton(
                    onPressed: () {
                      if (_selectedLatLng != null) {
                        CacheHelper.setData(
                          CacheConstants.selectedLocation,
                          _selectedLatLng,
                        );
                        context.pushNamed(Routes.addNewLocation);
                      } else {
                        context.defaultSnackBar(
                          title: context.tr.error,
                          description:
                              context.tr.please_select_a_location_first,
                          type: ToastificationType.error,
                        );
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(context.tr.add_new_location),
                        wGap10,
                        Icon(
                          Icons.add,
                          size: 30.sp,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
