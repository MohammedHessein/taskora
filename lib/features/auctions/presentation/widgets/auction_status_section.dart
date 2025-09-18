import 'package:flutter/material.dart';
import 'package:taskora/features/auctions/data/models/auction_model.dart';
import 'package:taskora/features/auctions/presentation/widgets/auction_active_section.dart';
import 'package:taskora/features/auctions/presentation/widgets/auction_ended_section.dart';

class AuctionStatusSection extends StatelessWidget {
  const AuctionStatusSection({required this.auction, super.key});
  final AuctionModel auction;

  @override
  Widget build(BuildContext context) {
    if (auction.status == "منتهى") {
      return AuctionEndedSection(auction: auction);
    } else {
      return AuctionActiveSection(auction: auction);
    }
  }
}
