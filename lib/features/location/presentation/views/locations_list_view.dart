import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/location/presentation/widgets/locations_list_view/add_location_button.dart';
import 'package:taskora/features/location/presentation/widgets/locations_list_view/confirm_button.dart';
import 'package:taskora/features/location/presentation/widgets/locations_list_view/locations_list.dart';
import 'package:taskora/features/location/presentation/widgets/locations_list_view/locations_title.dart';

class LocationsListView extends StatelessWidget {
  const LocationsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const LocationsListContent();
  }
}

class LocationsListContent extends StatelessWidget {
  const LocationsListContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
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
                    const LocationsTitle(),
                    hGap15,
                    const LocationsList(),
                    hGap20,
                    const ConfirmButton(),
                    hGap15,
                    const AddLocationButton(),
                    hGap20,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
