import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/shared/widgets/quantity_action_button.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class ServiceListItem extends StatefulWidget {
  const ServiceListItem({
    required this.item,
    super.key,
  });

  final Map<String, String> item;

  @override
  State<ServiceListItem> createState() => _ServiceListItemState();
}

class _ServiceListItemState extends State<ServiceListItem> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
      margin: EdgeInsets.only(bottom: 12.h),
      decoration: BoxDecoration(
        color: AppColors.grey.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.item["title"]!,
                  style: CustomTextStyle.kTextStyleF12.copyWith(
                    color: AppColors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Row(
                children: [
                  buildQuantityButton(
                    icon: Icons.remove,
                    onTap: () {
                      if (quantity > 0) {
                        setState(() => quantity--);
                      }
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Text(
                      "$quantity",
                      style: CustomTextStyle.kTextStyleF12.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  buildQuantityButton(
                    icon: Icons.add,
                    onTap: () {
                      setState(() => quantity++);
                    },
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            "${widget.item["price"]} ﷼",
            style: CustomTextStyle.kTextStyleF14.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
