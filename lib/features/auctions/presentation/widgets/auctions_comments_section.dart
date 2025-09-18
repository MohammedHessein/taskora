import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/features/auctions/data/models/auction_comment_model.dart';
import 'package:taskora/features/auctions/presentation/widgets/auction_comment_item.dart';

class AuctionsCommentsSection extends StatelessWidget {
  const AuctionsCommentsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.tr.comments,
          style: CustomTextStyle.kTextStyleF18.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.primaryBlue,
          ),
        ),
        hGap15,
        Text(
          context.tr.most_prominent_comments,
          style: CustomTextStyle.kTextStyleF12.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        hGap15,
        ...dummyComments.map((comment) => AuctionCommentItem(comment: comment)),
      ],
    );
  }
}
