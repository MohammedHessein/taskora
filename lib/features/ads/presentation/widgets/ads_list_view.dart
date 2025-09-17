import 'package:flutter/material.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/features/ads/data/models/ad_model.dart';
import 'package:taskora/features/ads/presentation/widgets/ad_list_item.dart';

class AdsListView extends StatelessWidget {
  const AdsListView({required this.tab, super.key});

  final ListingTypeTabs tab;

  @override
  Widget build(BuildContext context) {
    final allAds = dummyAds();

    final filteredAds = tab == ListingTypeTabs.all
        ? allAds
        : allAds.where((ad) => ad.type == tab).toList();

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final ad = filteredAds[index];
          return AdListItem(ad: ad);
        },
        childCount: filteredAds.length,
      ),
    );
  }
}
