import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/shared/widgets/custom_form_field.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/features/booking/presentation/widgets/rating_item.dart';
import 'package:taskora/features/booking/presentation/widgets/thanks_for_your_time_dialog.dart';
import 'package:taskora/generated/assets.dart';

class HelpUsImproveOurServicesDialog extends StatelessWidget {
  const HelpUsImproveOurServicesDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final ratingTitles = [
      context.tr.service_quality,
      context.tr.commitment_to_deadlines,
      context.tr.ease_of_communication,
      context.tr.price_quality_ratio,
      context.tr.overall_experience,
    ];
    final screenHeight = ScreenUtil().screenHeight;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Dialog(
          insetPadding: EdgeInsets.symmetric(
            horizontal: 10.w,
            vertical: screenHeight / 7,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text(
                        context.tr.help_us_develop_our_services,
                        style: CustomTextStyle.kTextStyleF16.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      wGap25,
                      Text(
                        '3',
                        style: CustomTextStyle.kTextStyleF16.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      wGap5,
                      SvgPicture.asset(Assets.svgsActiveStar),
                    ],
                  ),
                  hGap25,
                  ...List.generate(
                    ratingTitles.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: RatingItem(title: ratingTitles[index]),
                    ),
                  ),
                  hGap25,
                  CustomFormField(
                    hint: context.tr.comment,
                    maxLines: 4,
                    keyboardType: TextInputType.multiline,
                    stream: const Stream.empty(),
                    onChanged: (value) {},
                  ),
                  hGap25,
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            context.pop(true);
                            showDialog(
                              context: context,
                              builder: (context) =>
                                  const ThanksForYourTimeDialog(),
                            );
                          },
                          child: Text(context.tr.submit),
                        ),
                      ),
                      wGap10,
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            side: BorderSide(color: AppColors.grey.shade200),
                            backgroundColor: WidgetStateColor.resolveWith(
                              (states) => AppColors.grey.shade50,
                            ),
                            foregroundColor: WidgetStateColor.resolveWith(
                              (states) => AppColors.grey,
                            ),
                          ),
                          onPressed: () {
                            context.pushNamedAndRemoveUntil(
                              Routes.navBar,
                              predicate: (route) => false,
                            );
                          },
                          child: Text(context.tr.cancel),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
