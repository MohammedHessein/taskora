import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/features/ads/data/models/ad_model.dart';
import 'package:taskora/features/ads/presentation/widgets/ad_grid_item.dart';

class AdsGridView extends StatelessWidget {
  const AdsGridView({required this.tab, super.key});

  final ListingTypeTabs tab;

  @override
  Widget build(BuildContext context) {
    final allAds = dummyAds();
    final filteredAds = tab == ListingTypeTabs.all
        ? allAds
        : allAds.where((ad) => ad.type == tab).toList();

    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final ad = filteredAds[index];
          return AdGridItem(ad: ad);
        },
        childCount: filteredAds.length,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12.h,
        crossAxisSpacing: 12.w,
        childAspectRatio: 0.57,
      ),
    );
  }
}
