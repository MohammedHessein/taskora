import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/localization_extension.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/ads/presentation/widgets/add_ad_details_form.dart';
import 'package:taskora/features/listings/presentation/widgets/listing_type_number.dart';
import 'package:taskora/features/listings/presentation/widgets/listing_type_purpose.dart';
import 'package:taskora/features/listings/presentation/widgets/second_add_step_header.dart';

class AdDetailsView extends StatefulWidget {
  const AdDetailsView({super.key});

  @override
  State<AdDetailsView> createState() => _AdDetailsViewState();
}

class _AdDetailsViewState extends State<AdDetailsView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> tabs = [
    "purpose_sale",
    "purpose_rent",
    "purpose_lost_found",
    "purpose_charity",
    "purpose_exchange",
    "purpose_buy",
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            CustomSliverAppBar(
              locationFuture: LocationProvider.getLocation(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: Dimensions.p16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SecondAddStepHeader(
                      listingType: ListingType.advertisement,
                    ),
                    hGap25,
                    const ListingTypeNumber(
                      listingType: ListingType.advertisement,
                    ),
                    hGap10,
                    const ListingTypePurpose(
                      listingType: ListingType.advertisement,
                    ),
                    hGap20,
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: TabBar(
                tabAlignment: TabAlignment.start,
                labelPadding: EdgeInsets.symmetric(horizontal: 8.w),
                controller: _tabController,
                isScrollable: true,
                overlayColor: WidgetStateColor.transparent,
                dividerColor: Colors.transparent,
                indicatorColor: Colors.transparent,
                onTap: (_) => setState(() {}),
                tabs: List.generate(tabs.length, (index) {
                  final isSelected = _tabController.index == index;
                  return Container(
                    margin: EdgeInsets.only(right: 8.w),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? AppColors.primaryBlue
                          : AppColors.white,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: isSelected
                            ? Colors.transparent
                            : AppColors.grey.shade400,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.p12.w,
                      vertical: Dimensions.p8.h,
                    ),
                    child: Text(
                      translateAdDetailsCategoryKey(context, tabs[index]),
                      style: CustomTextStyle.kTextStyleF12.copyWith(
                        fontWeight: FontWeight.w600,
                        color: isSelected ? AppColors.white : AppColors.grey,
                      ),
                    ),
                  );
                }),
              ),
            ),
            SliverToBoxAdapter(child: hGap20),
          ],
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: tabs.map((purposeKey) {
              return const AdDetailsForm();
            }).toList(),
          ),
        ),
      ),
    );
  }
}
