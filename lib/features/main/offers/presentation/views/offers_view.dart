import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/main/home/presentation/widgets/carousel_service_widget.dart';
import 'package:taskora/features/main/offers/data/models/offer_model.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyOffers = getOffers(context);
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            CustomSliverAppBar(
              locationFuture: LocationProvider.getLocation(),
              currentTab: Tabs.offers,
            ),

            SliverToBoxAdapter(child: SizedBox(height: Dimensions.p34.h)),

            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.p16.w),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final offer = dummyOffers[index];
                    return Container(
                      margin: EdgeInsets.only(bottom: Dimensions.p16.h),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.08),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.r),
                              topRight: Radius.circular(12.r),
                            ),
                            child: AspectRatio(
                              aspectRatio: 343 / 105,
                              child: Image.asset(
                                offer.imageUrl,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(Dimensions.p16.r),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        offer.title,
                                        style: CustomTextStyle.kTextStyleF12
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Text(
                                      offer.offerStatus,
                                      style: CustomTextStyle.kTextStyleF11
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color:
                                                offer.offerStatus ==
                                                    context.tr.available
                                                ? AppColors.success
                                                : AppColors.error,
                                          ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  offer.description,
                                  style: CustomTextStyle.kTextStyleF11.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  childCount: dummyOffers.length,
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.p16.w),
                child: SizedBox(
                  height: 200.h,
                  child: const CarouselServiceWidget(),
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: Dimensions.p16.h)),
          ],
        ),
      ),
    );
  }
}
