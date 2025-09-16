import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskora/core/extensions/localization_extension.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/main/home/presentation/widgets/carousel_service_widget.dart';
import 'package:taskora/features/main/store/presentation/widgets/carousel_featured_ads.dart';
import 'package:taskora/features/main/store/presentation/widgets/store_grid_view.dart';
import 'package:taskora/features/main/store/presentation/widgets/store_list_view.dart';
import 'package:taskora/generated/assets.dart';

class StoreView extends StatefulWidget {
  const StoreView({super.key});

  @override
  State<StoreView> createState() => _StoreViewState();
}

class _StoreViewState extends State<StoreView>
    with SingleTickerProviderStateMixin {
  StoreTabs selectedLayout = StoreTabs.list;

  bool isLayoutSelected(StoreTabs tab) {
    return selectedLayout == tab;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            CustomSliverAppBar(
              locationFuture: LocationProvider.getLocation(),
              currentTab: Tabs.store,
            ),
            SliverToBoxAdapter(child: hGap20),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.p16.w),
                child: const CarouselFeaturedAds(),
              ),
            ),
            SliverToBoxAdapter(child: hGap20),
            SliverToBoxAdapter(
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedLayout = StoreTabs.list;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(8.r),
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: isLayoutSelected(StoreTabs.list)
                              ? AppColors.white
                              : AppColors.primaryBlue,
                        ),

                        color: isLayoutSelected(StoreTabs.list)
                            ? AppColors.primaryBlue
                            : AppColors.white,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Text(
                        context.tr.list,
                        style: CustomTextStyle.kTextStyleF10.copyWith(
                          fontWeight: FontWeight.w500,
                          color: isLayoutSelected(StoreTabs.list)
                              ? AppColors.white
                              : AppColors.primaryBlue,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedLayout = StoreTabs.grid;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(8.r),
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: isLayoutSelected(StoreTabs.grid)
                              ? AppColors.white
                              : AppColors.primaryBlue,
                        ),
                        color: isLayoutSelected(StoreTabs.grid)
                            ? AppColors.primaryBlue
                            : AppColors.white,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Text(
                        context.tr.grid,
                        style: CustomTextStyle.kTextStyleF10.copyWith(
                          fontWeight: FontWeight.w500,
                          color: isLayoutSelected(StoreTabs.grid)
                              ? AppColors.white
                              : AppColors.primaryBlue,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.r),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(8.r),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(color: AppColors.grey.shade200),
                        ),
                        child: SvgPicture.asset(Assets.svgsFilter),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(child: hGap8),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.p16.w,
                vertical: Dimensions.p16.h,
              ),
              sliver: isLayoutSelected(StoreTabs.list)
                  ? const StoreListView()
                  : const StoreGridView(),
            ),
            const SliverToBoxAdapter(
              child: CarouselServiceWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
