import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/features/booking/presentation/widgets/total_service_container_item.dart';

class TotalServiceContainer extends StatelessWidget {
  const TotalServiceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: AppColors.grey.shade100,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.tr.total_service_cost,
            style: CustomTextStyle.kTextStyleF14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          hGap15,
          TotalServiceContainerItem(
            serviceTitle: context.tr.payment_method,
            serviceValue: 'STC Pay',
          ),
          hGap15,
          TotalServiceContainerItem(
            serviceTitle: context.tr.subtotal,
            serviceValue: '1000',
          ),
          hGap15,
          TotalServiceContainerItem(
            serviceTitle: context.tr.serviceFee,
            serviceValue: '20',
          ),
          hGap15,
          TotalServiceContainerItem(
            serviceTitle: context.tr.total_service_cost_with_vat,
            serviceValue: '1500',
          ),
        ],
      ),
    );
  }
}
