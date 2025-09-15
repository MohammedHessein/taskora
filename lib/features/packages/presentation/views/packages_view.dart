import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/main/home/presentation/widgets/carousel_service_widget.dart';
import 'package:taskora/features/packages/presentation/widgets/faq_list_view.dart';
import 'package:taskora/features/packages/presentation/widgets/pacakges_list_view.dart';

class PackagesView extends StatelessWidget {
  const PackagesView({super.key});

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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      context.tr.pay_less_earn_more,
                      style: CustomTextStyle.kTextStyleF16.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryBlue,
                      ),
                    ),
                    hGap10,
                    Text(
                      context.tr.choose_package_discount,
                      style: CustomTextStyle.kTextStyleF12.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.primaryBlue,
                      ),
                    ),
                    Divider(
                      height: 40.h,
                      color: AppColors.primaryBlue,
                    ),
                    hGap20,
                    const PackagesListView(),
                    hGap35,
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Text(
                        context.tr.faq,
                        style: CustomTextStyle.kTextStyleF16.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryBlue,
                        ),
                      ),
                    ),
                    hGap15,
                  ],
                ),
              ),
            ),
            const FaqListView(),
            SliverToBoxAdapter(
              child: hGap35,
            ),
            const SliverToBoxAdapter(
              child: CarouselServiceWidget(),
            ),
            SliverToBoxAdapter(
              child: hGap35,
            ),
          ],
        ),
      ),
    );
  }
}
