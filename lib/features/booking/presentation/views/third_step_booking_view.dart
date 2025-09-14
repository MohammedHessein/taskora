import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/booking/presentation/widgets/additional_info_widget.dart';
import 'package:taskora/features/booking/presentation/widgets/booking_step_header.dart';
import 'package:taskora/features/booking/presentation/widgets/help_us_improve_our_services_dialog.dart';
import 'package:taskora/features/booking/presentation/widgets/order_details_widget.dart';
import 'package:taskora/features/booking/presentation/widgets/technician_pop_up_widget.dart';
import 'package:taskora/features/booking/presentation/widgets/total_service_container.dart';
import 'package:taskora/features/booking/presentation/widgets/tracking_order_status_container.dart';

class ThirdStepBookingView extends StatefulWidget {
  const ThirdStepBookingView({super.key});

  @override
  State<ThirdStepBookingView> createState() => _ThirdStepBookingViewState();
}

class _ThirdStepBookingViewState extends State<ThirdStepBookingView> {
  int currentTrackingStep = 0;
  bool showTechnicianPopup = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      if (mounted) {
        setState(() {
          currentTrackingStep = 1;
        });
      }
    });
    Future.delayed(const Duration(seconds: 10), () {
      if (mounted) {
        setState(() {
          currentTrackingStep = 2;
        });
      }
    });
    Future.delayed(const Duration(seconds: 14), () {
      if (mounted) {
        setState(() {
          currentTrackingStep = 3;
          showTechnicianPopup = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            CustomScrollView(
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
                          currentStepTitle: context.tr.third_step,
                          title: context.tr.track_order,
                          currentStep: 2,
                        ),
                        hGap30,
                        TrackingOrderStatusContainer(
                          currentTrackingStep: currentTrackingStep,
                        ),
                        hGap20,
                        if (currentTrackingStep == 0)
                          const AdditionalInfoWidget()
                        else
                          const SizedBox(),
                        hGap20,
                        const OrderDetailsWidget(),
                        hGap20,
                        if (currentTrackingStep != 3)
                          TextButton(
                            onPressed: () {
                              context.pushNamedAndRemoveUntil(
                                Routes.navBar,
                                predicate: (route) => false,
                              );
                            },
                            child: Text(context.tr.cancel_order),
                          ),
                        if (currentTrackingStep == 3)
                          const TotalServiceContainer(),
                        hGap35,
                        if (currentTrackingStep == 3)
                          TextButton(
                            style: const ButtonStyle(
                              foregroundColor: WidgetStatePropertyAll(
                                AppColors.success,
                              ),
                            ),
                            onPressed: () {
                              showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (context) =>
                                    const HelpUsImproveOurServicesDialog(),
                              );
                            },
                            child: Text(context.tr.service_review),
                          ),
                        hGap35,
                      ],
                    ),
                  ),
                ),
              ],
            ),
            if (showTechnicianPopup)
              TechnicianPopupWidget(
                onClose: () {
                  setState(() {
                    showTechnicianPopup = false;
                  });
                  context.pop(true);
                },
                onConfirm: () {
                  setState(() {
                    showTechnicianPopup = false;
                  });
                },
              ),
          ],
        ),
      ),
    );
  }
}
