import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/booking/presentation/widgets/booking_step_header.dart';
import 'package:taskora/features/booking/presentation/widgets/google_maps_widget.dart';

class SecondStepBookingView extends StatelessWidget {
  const SecondStepBookingView({super.key});

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
                    BookingStepHeader(
                      currentStepTitle: context.tr.second_step,
                      title: context.tr.select_location,
                      currentStep: 1,
                    ),
                    const GoogleMapsWidget(),
                    hGap100,
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(context.tr.cancel),
                        ),
                        const Spacer(),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(context.tr.next),
                          ),
                        ),
                      ],
                    ),
                    hGap35,
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
