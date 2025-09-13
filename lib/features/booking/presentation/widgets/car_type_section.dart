import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/constants/cache_constants.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/helpers/cache_helper.dart';
import 'package:taskora/core/shared/widgets/custom_drop_down_menu.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/shared/widgets/state_loading_widget.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class CarTypeSection extends StatelessWidget {
  const CarTypeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: CacheHelper.getData(
        CacheConstants.isWashingCarsService,
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const StateLoadingWidget();
        }
        final isCarWashingService = snapshot.data == true;
        if (!isCarWashingService) {
          return const SizedBox.shrink();
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.tr.car_type,
              style: CustomTextStyle.kTextStyleF12.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColors.grey.shade300,
              ),
            ),
            hGap20,
            SizedBox(
              height: 60.h,
              child: const CustomDropDownMenu(),
            ),
          ],
        );
      },
    );
  }
}
