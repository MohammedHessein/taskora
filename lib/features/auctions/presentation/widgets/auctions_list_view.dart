import 'package:flutter/material.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/features/ads/data/models/auction_model.dart';
import 'package:taskora/features/auctions/presentation/widgets/auction_list_item.dart';

class AuctionsListView extends StatelessWidget {
  const AuctionsListView({required this.tab, super.key});

  final AuctionTabs tab;

  @override
  Widget build(BuildContext context) {
    final allAuctions = dummyAuctions();

    final filteredAuctions = tab == AuctionTabs.all
        ? allAuctions
        : allAuctions.where((auction) => auction.type == tab).toList();

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final auction = filteredAuctions[index];
          return AuctionListItem(auction: auction);
        },
        childCount: filteredAuctions.length,
      ),
    );
  }
}
