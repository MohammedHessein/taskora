import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/config/service_tabs_configs.dart';
import 'package:taskora/core/extensions/localization_extension.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/main/home/data/models/technical_service_model.dart';
import 'package:taskora/features/main/home/presentation/widgets/carousel_service_widget.dart';
import 'package:taskora/features/services/presentation/widgets/service_list_item.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  late List<String> tabsKeys;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args =
        ModalRoute.of(context)!.settings.arguments! as TechnicalServiceModel;
    final serviceId = args.id;
    tabsKeys = serviceTabsConfig[serviceId] ?? ["tabs.default"];

    _tabController ??= TabController(
      length: tabsKeys.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController?.dispose();
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
            SliverToBoxAdapter(child: hGap20),
            SliverToBoxAdapter(
              child: Center(
                child: Text(
                  context.tr.choose_service,
                  style: CustomTextStyle.kTextStyleF14.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(child: hGap20),
            SliverToBoxAdapter(
              child: TabBar(
                labelPadding: EdgeInsetsDirectional.only(start: 10.w, end: 5.w),
                controller: _tabController,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                overlayColor: WidgetStateColor.transparent,
                dividerColor: Colors.transparent,
                indicatorColor: Colors.transparent,
                onTap: (_) => setState(() {}),
                tabs: List.generate(tabsKeys.length, (index) {
                  final isSelected = _tabController!.index == index;
                  final key = tabsKeys[index];

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
                      translateServiceKey(context, key),
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
            controller: _tabController,
            children: tabsKeys.map((key) {
              final items = serviceItems[key] ?? [];

              return ListView.separated(
                padding: EdgeInsets.all(12.w),
                itemCount: items.length + 1,
                separatorBuilder: (_, __) => SizedBox(height: 10.h),
                itemBuilder: (context, index) {
                  if (index < items.length) {
                    final item = items[index];
                    return ServiceListItem(item: item);
                  } else {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 12.h,
                        horizontal: 12.w,
                      ),
                      child: const CarouselServiceWidget(),
                    );
                  }
                },
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
