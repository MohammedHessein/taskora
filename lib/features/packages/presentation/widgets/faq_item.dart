import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/features/packages/data/models/faq_model.dart';

class FaqItem extends StatefulWidget {
  const FaqItem({required this.faq, super.key});

  final FaqModel faq;

  @override
  State<FaqItem> createState() => _FaqItemState();
}

class _FaqItemState extends State<FaqItem> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.h, horizontal: 8.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                highlightColor: Colors.transparent,
                onPressed: () {
                  setState(() {
                    expanded = !expanded;
                  });
                },
                icon: Container(
                  width: 50.w,
                  height: 44.h,
                  decoration: BoxDecoration(
                    color: AppColors.grey.shade100,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Icon(
                    expanded ? Icons.remove : Icons.add,
                    size: 25.sp,
                    color: AppColors.primaryBlue,
                  ),
                ),
              ),
              wGap5,
              Expanded(
                child: Text(
                  widget.faq.question,
                  style: CustomTextStyle.kTextStyleF16.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          if (expanded)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 50.w + 5.w),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 8.h, left: 4.w),
                    child: Text(
                      widget.faq.answer,
                      textAlign: TextAlign.justify,
                      style: CustomTextStyle.kTextStyleF12,
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
