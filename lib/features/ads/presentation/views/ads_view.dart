import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskora/core/extensions/localization_extension.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/ads/presentation/widgets/ad_tab_button.dart';
import 'package:taskora/features/ads/presentation/widgets/ads_grid_view.dart';
import 'package:taskora/features/ads/presentation/widgets/ads_list_view.dart';
import 'package:taskora/features/listings/presentation/widgets/listing_type_layout_button.dart';
import 'package:taskora/features/main/home/presentation/widgets/carousel_service_widget.dart';
import 'package:taskora/generated/assets.dart';

class AdsView extends StatefulWidget {
  const AdsView({super.key});

  @override
  State<AdsView> createState() => _AdsViewState();
}

class _AdsViewState extends State<AdsView> with SingleTickerProviderStateMixin {
  StoreTabs selectedLayout = StoreTabs.list;
  ListingTypeTabs selectedTab = ListingTypeTabs.all;

  bool isLayoutSelected(StoreTabs tab) {
    return selectedLayout == tab;
  }

  bool isFilterSelected(ListingTypeTabs tab) {
    return selectedTab == tab;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(
              locationFuture: LocationProvider.getLocation(),
              currentTab: Tabs.offers,
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
                    child: ListingTypeLayoutButton(
                      text: context.tr.list,
                      selected: isLayoutSelected(StoreTabs.list),
                    ),
                  ),
                  wGap5,
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedLayout = StoreTabs.grid;
                      });
                    },
                    child: ListingTypeLayoutButton(
                      text: context.tr.grid,
                      selected: isLayoutSelected(StoreTabs.grid),
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
            SliverToBoxAdapter(child: hGap10),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.p16.w),
                child: Row(
                  children: [
                    AdTabButton(
                      tab: ListingTypeTabs.all,
                      selectedTab: selectedTab,
                      text: context.tr.all,
                      onTap: () {
                        setState(() {
                          selectedTab = ListingTypeTabs.all;
                        });
                      },
                    ),
                    wGap10,
                    AdTabButton(
                      tab: ListingTypeTabs.daily,
                      selectedTab: selectedTab,
                      text: context.tr.daily,
                      onTap: () {
                        setState(() {
                          selectedTab = ListingTypeTabs.daily;
                        });
                      },
                    ),
                    wGap10,
                    AdTabButton(
                      tab: ListingTypeTabs.weekly,
                      selectedTab: selectedTab,
                      text: context.tr.weekly,
                      onTap: () {
                        setState(() {
                          selectedTab = ListingTypeTabs.weekly;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(child: hGap8),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.p16.w,
                vertical: Dimensions.p10.h,
              ),
              sliver: isLayoutSelected(StoreTabs.list)
                  ? AdsListView(tab: selectedTab)
                  : AdsGridView(tab: selectedTab),
            ),
            const SliverToBoxAdapter(
              child: CarouselServiceWidget(),
            ),
            SliverToBoxAdapter(child: hGap20),
          ],
        ),
      ),
    );
  }
}
