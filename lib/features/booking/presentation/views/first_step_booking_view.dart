import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/shared/widgets/checkbox_item.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/booking/presentation/widgets/banking_details_section.dart';
import 'package:taskora/features/booking/presentation/widgets/booking_step_header.dart';
import 'package:taskora/features/booking/presentation/widgets/car_type_section.dart';
import 'package:taskora/features/booking/presentation/widgets/discount_container.dart';
import 'package:taskora/features/booking/presentation/widgets/payment_details_section.dart';
import 'package:taskora/features/booking/presentation/widgets/request_schdule_section.dart';
import 'package:taskora/generated/assets.dart';

class FirstStepBookingView extends StatefulWidget {
  const FirstStepBookingView({super.key});

  @override
  State<FirstStepBookingView> createState() => _FirstStepBookingViewState();
}

class _FirstStepBookingViewState extends State<FirstStepBookingView> {
  bool requestScheduleActive = false;

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
                      title: context.tr.first_step,
                      currentStep: 0,
                    ),
                    const CarTypeSection(),
                    hGap35,
                    const PaymentDetailsSection(),
                    hGap35,
                    const BankingDetailsSection(),
                    hGap35,
                    if (requestScheduleActive) ...[
                      const RequestScheduleSection(),
                      hGap35,
                    ],
                    const DiscountContainer(
                      leadingIcon: Assets.svgsRefresh,
                    ),
                    hGap15,
                    const DiscountContainer(
                      leadingIcon: Assets.svgsExplanationMark,
                    ),
                    hGap35,
                    CheckBoxItem(
                      title: context.tr.requestSchedule,
                      onChanged: (val) {
                        setState(() => requestScheduleActive = val);
                      },
                    ),
                    CheckBoxItem(
                      title:
                          '${context.tr.i_agree_on}\t${context.tr.terms_and_conditions}',
                    ),
                    hGap35,
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
