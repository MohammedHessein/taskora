import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/features/ads/data/models/auction_model.dart';
import 'package:taskora/features/auctions/presentation/widgets/auction_grid_item.dart';

class AuctionsGridView extends StatelessWidget {
  const AuctionsGridView({required this.tab, super.key});

  final AuctionTabs tab;

  @override
  Widget build(BuildContext context) {
    final allAuctions = dummyAuctions();
    final filteredAuctions = tab == AuctionTabs.all
        ? allAuctions
        : allAuctions.where((auction) => auction.type == tab).toList();

    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final auction = filteredAuctions[index];
          return AuctionGridItem(auction: auction);
        },
        childCount: filteredAuctions.length,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12.h,
        crossAxisSpacing: 12.w,
        childAspectRatio: 0.50, // Adjusted for auction cards which are taller
      ),
    );
  }
}
