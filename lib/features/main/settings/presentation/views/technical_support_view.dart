import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/generated/assets.dart';

class TechnicalSupportView extends StatelessWidget {
  const TechnicalSupportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(
              locationFuture: LocationProvider.getLocation(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.p16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        context.tr.technical_support,
                        style: CustomTextStyle.kTextStyleF16.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryBlue,
                        ),
                      ),
                    ),
                    hGap35,
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                            vertical: 10.h,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.primaryBlue),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: SvgPicture.asset(
                            Assets.svgsPhone2,
                            height: 16.h,
                            width: 16.w,
                          ),
                        ),
                        wGap15,
                        Text(
                          '+966 55 768 6624',
                          style: CustomTextStyle.kTextStyleF14,
                        ),
                      ],
                    ),
                    hGap15,
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 10.h,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.primaryBlue),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: SvgPicture.asset(
                            Assets.svgsMessage,
                            height: 16.h,
                            width: 16.w,
                          ),
                        ),
                        wGap15,
                        Text(
                          'mohammed@gmail.com',
                          style: CustomTextStyle.kTextStyleF14,
                        ),
                      ],
                    ),
                    hGap15,
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                            vertical: 10.h,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.primaryBlue),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: SvgPicture.asset(
                            Assets.svgsLocation,
                            height: 16.h,
                            width: 16.w,
                          ),
                        ),
                        wGap15,
                        Text(
                          'الرياض- الملز- - 12845- طريق صلاح الدين',
                          style: CustomTextStyle.kTextStyleF14,
                        ),
                      ],
                    ),
                    hGap35,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          context.tr.leave_your_message,
                          style: CustomTextStyle.kTextStyleF14.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryBlue,
                          ),
                        ),
                        wGap5,
                        SvgPicture.asset(
                          Assets.svgsPhone,
                        ),
                      ],
                    ),
                    hGap35,
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: context.tr.name,
                      ),
                    ),
                    hGap15,
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: context.tr.phoneNumber,
                      ),
                    ),
                    hGap15,
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: context.tr.address,
                      ),
                    ),
                    hGap15,
                    TextFormField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        hintText: context.tr.comment,
                      ),
                    ),
                    hGap35,
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        context.tr.send,
                      ),
                    ),
                    hGap35,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
