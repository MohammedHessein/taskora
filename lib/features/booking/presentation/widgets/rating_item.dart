import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class RatingItem extends StatefulWidget {
  const RatingItem({
    required this.title,
    required this.onRatingUpdate,
    super.key,
  });

  final String title;
  final void Function(int) onRatingUpdate;

  @override
  State<RatingItem> createState() => _RatingItemState();
}

class _RatingItemState extends State<RatingItem> {
  int ratingNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            widget.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: CustomTextStyle.kTextStyleF13.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.primaryBlue,
            ),
          ),
        ),
        RatingBar.builder(
          itemSize: 30.sp,
          minRating: 1,
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: AppColors.goldYellow,
          ),
          onRatingUpdate: (value) {
            setState(() {
              ratingNumber = value.toInt();
            });
            widget.onRatingUpdate(ratingNumber);
          },
        ),
      ],
    );
  }
}
