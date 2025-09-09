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
import 'package:taskora/generated/l10n.dart';

class StoreView extends StatefulWidget {
  const StoreView({super.key});

  @override
  State<StoreView> createState() => _StoreViewState();
}

class _StoreViewState extends State<StoreView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> categoryKeys = [
    'all',
    'electrical_devices',
    'household_tools',
    'furniture_equipment',
    'cars',
  ];
  StoreTabs selectedLayout = StoreTabs.list;
  bool isStoreCategorySelected = false;

  bool isLayoutSelected(StoreTabs tab) {
    return selectedLayout == tab;
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: categoryKeys.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
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
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedLayout = StoreTabs.list;
                      });
                    },
                    child: Text(
                      context.tr.list,
                      style: CustomTextStyle.kTextStyleF14.copyWith(
                        fontWeight: FontWeight.w700,
                        color: isLayoutSelected(StoreTabs.list)
                            ? AppColors.black
                            : AppColors.grey,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedLayout = StoreTabs.grid;
                      });
                    },
                    child: Text(
                      context.tr.network,
                      style: CustomTextStyle.kTextStyleF14.copyWith(
                        fontWeight: FontWeight.w700,
                        color: isLayoutSelected(StoreTabs.grid)
                            ? AppColors.black
                            : AppColors.grey,
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
            SliverToBoxAdapter(
              child: AnimatedBuilder(
                animation: _tabController,
                builder: (context, _) {
                  return TabBar(
                    tabAlignment: TabAlignment.start,
                    padding: EdgeInsets.zero,
                    controller: _tabController,
                    dividerColor: Colors.transparent,
                    labelPadding: EdgeInsetsDirectional.only(
                      start: 10.w,
                      end: 5.w,
                    ),
                    overlayColor: const WidgetStatePropertyAll(
                      Colors.transparent,
                    ),
                    isScrollable: true,
                    indicatorColor: Colors.transparent,
                    tabs: List.generate(categoryKeys.length, (index) {
                      final key = categoryKeys[index];
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
                          S.of(context).byKey(key),
                          style: CustomTextStyle.kTextStyleF12.copyWith(
                            fontWeight: FontWeight.w600,
                            color: isSelected
                                ? AppColors.white
                                : AppColors.grey,
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.p16.w,
                vertical: Dimensions.p16.h,
              ),
              sliver: AnimatedBuilder(
                animation: _tabController,
                builder: (context, _) {
                  final currentCategory = categoryKeys[_tabController.index];
                  return isLayoutSelected(StoreTabs.list)
                      ? StoreListView(categoryKey: currentCategory)
                      : StoreGridView(categoryKey: currentCategory);
                },
              ),
            ),
            const SliverToBoxAdapter(child: CarouselServiceWidget()),
          ],
        ),
      ),
    );
  }
}
