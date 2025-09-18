import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/auctions/presentation/widgets/auction_tab_button.dart';
import 'package:taskora/features/auctions/presentation/widgets/auctions_grid_view.dart';
import 'package:taskora/features/auctions/presentation/widgets/auctions_list_view.dart';
import 'package:taskora/features/listings/presentation/widgets/listing_type_layout_button.dart';
import 'package:taskora/features/main/home/presentation/widgets/carousel_service_widget.dart';
import 'package:taskora/generated/assets.dart';

class AuctionsView extends StatefulWidget {
  const AuctionsView({super.key});

  @override
  State<AuctionsView> createState() => _AuctionsViewState();
}

class _AuctionsViewState extends State<AuctionsView> {
  StoreTabs selectedLayout = StoreTabs.list;
  AuctionTabs selectedTab = AuctionTabs.all;
  ListingTypeTabs selectedListingType = ListingTypeTabs.all;

  bool isLayoutSelected(StoreTabs tab) => selectedLayout == tab;

  bool isFilterSelected(AuctionTabs tab) => selectedTab == tab;

  bool isListingTypeSelected(ListingTypeTabs tab) => selectedListingType == tab;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(
              locationFuture: LocationProvider.getLocation(),
            ),
            SliverToBoxAdapter(child: hGap20),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.p8.w),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () =>
                          setState(() => selectedLayout = StoreTabs.list),
                      child: ListingTypeLayoutButton(
                        text: context.tr.list,
                        selected: isLayoutSelected(StoreTabs.list),
                      ),
                    ),
                    wGap5,
                    GestureDetector(
                      onTap: () =>
                          setState(() => selectedLayout = StoreTabs.grid),
                      child: ListingTypeLayoutButton(
                        text: context.tr.grid,
                        selected: isLayoutSelected(StoreTabs.grid),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
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
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(child: hGap20),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.p8.w),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => setState(() {
                        selectedListingType = ListingTypeTabs.all;
                      }),
                      child: ListingTypeLayoutButton(
                        text: context.tr.all,
                        selected: isListingTypeSelected(ListingTypeTabs.all),
                      ),
                    ),
                    wGap5,
                    GestureDetector(
                      onTap: () => setState(() {
                        selectedListingType = ListingTypeTabs.daily;
                      }),
                      child: ListingTypeLayoutButton(
                        text: context.tr.daily,
                        selected: isListingTypeSelected(ListingTypeTabs.daily),
                      ),
                    ),
                    wGap5,
                    GestureDetector(
                      onTap: () => setState(() {
                        selectedListingType = ListingTypeTabs.weekly;
                      }),
                      child: ListingTypeLayoutButton(
                        text: context.tr.weekly,
                        selected: isListingTypeSelected(ListingTypeTabs.weekly),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(child: hGap20),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.p16.w),
                child: Row(
                  children: [
                    AuctionTabButton(
                      tab: AuctionTabs.all,
                      selectedTab: selectedTab,
                      text: context.tr.all,
                      onTap: () {
                        setState(() {
                          selectedTab = AuctionTabs.all;
                        });
                      },
                    ),
                    wGap10,
                    AuctionTabButton(
                      tab: AuctionTabs.previousAuctions,
                      selectedTab: selectedTab,
                      text: context.tr.previous_auctions,
                      onTap: () {
                        setState(() {
                          selectedTab = AuctionTabs.previousAuctions;
                        });
                      },
                    ),
                    wGap10,
                    AuctionTabButton(
                      tab: AuctionTabs.roamingAuctions,
                      selectedTab: selectedTab,
                      text: context.tr.roaming_auctions,
                      onTap: () {
                        setState(() {
                          selectedTab = AuctionTabs.roamingAuctions;
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
                  ? AuctionsListView(tab: selectedTab)
                  : AuctionsGridView(tab: selectedTab),
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
