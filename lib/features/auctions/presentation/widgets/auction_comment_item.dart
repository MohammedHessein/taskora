import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/features/auctions/data/models/auction_comment_model.dart';

class AuctionCommentItem extends StatelessWidget {
  const AuctionCommentItem({required this.comment, super.key});
  final AuctionCommentModel comment;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        color: AppColors.grey.shade100,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          hGap10,
          Row(
            children: [
              CircleAvatar(
                radius: 18.sp,
                backgroundImage: AssetImage(comment.imageUrl),
              ),
              wGap10,
              Text(
                comment.name,
                style: CustomTextStyle.kTextStyleF12.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          hGap10,
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              comment.commentText,
              style: CustomTextStyle.kTextStyleF11,
            ),
          ),
          hGap10,
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              comment.timeAgo,
              style: CustomTextStyle.kTextStyleF12.copyWith(
                color: AppColors.primaryBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
