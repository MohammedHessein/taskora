import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/shared/widgets/checkbox_item.dart';
import 'package:taskora/core/shared/widgets/custom_drop_down_menu.dart';
import 'package:taskora/core/shared/widgets/custom_form_field.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/ads/presentation/widgets/add_ad_images_section.dart';
import 'package:taskora/generated/assets.dart';

class AdDetailsForm extends StatelessWidget {
  const AdDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.p16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            hGap25,
            CustomFormField(
              postIcon: Padding(
                padding: EdgeInsets.all(12.r),
                child: SvgPicture.asset(
                  Assets.svgsCurrency,
                  height: 10.h,
                  width: 10.w,
                  colorFilter: ColorFilter.mode(
                    AppColors.grey.shade400,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              hint: context.tr.price,
              stream: const Stream.empty(),
              onChanged: (value) {},
            ),
            hGap25,
            SizedBox(
              height: 60.h,
              child: CustomDropDownMenu(
                dropdownMenuEntries: [],
                hintText: context.tr.select_price_type,
              ),
            ),
            hGap25,
            CheckBoxItem(
              title: context.tr.make_featured_ad,
              style: CustomTextStyle.kTextStyleF12.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.primaryBlue,
              ),
            ),
            hGap8,
            Text(
              context.tr.ad_more_attention,
              style: CustomTextStyle.kTextStyleF12.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.grey.shade300,
              ),
            ),
            hGap25,
            CheckBoxItem(title: context.tr.ad_images),
            hGap15,
            const AdImagesSection(),
            hGap15,
            CheckBoxItem(
              title:
                  '${context.tr.iAgreeToThe}\t${context.tr.terms_and_conditions}',
            ),
            hGap30,
            ElevatedButton(
              onPressed: () {
                context.pushNamedAndRemoveUntil(
                  Routes.navBar,
                  predicate: (route) => false,
                );
              },
              child: Text(context.tr.publish),
            ),
          ],
        ),
      ),
    );
  }
}
