import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/location/presentation/widgets/add_new_location/address_section.dart';
import 'package:taskora/features/location/presentation/widgets/add_new_location/map_section.dart';
import 'package:taskora/features/location/presentation/widgets/add_new_location/save_location_button.dart';

class AddNewLocationContent extends StatelessWidget {
  const AddNewLocationContent({super.key});

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
                  const MapSection(),
                  hGap20,
                  const AddressSection(),
                  hGap100,
                  const SaveLocationButton(),
                  hGap20,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
