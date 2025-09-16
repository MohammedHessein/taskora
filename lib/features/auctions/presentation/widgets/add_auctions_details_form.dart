import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/shared/widgets/checkbox_item.dart';
import 'package:taskora/core/shared/widgets/custom_form_field.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/features/auctions/presentation/widgets/add_auction_video_section.dart';
import 'package:taskora/features/auctions/presentation/widgets/current_price_section.dart';
import 'package:taskora/features/listings/presentation/widgets/add_listing_type_images_section.dart';
import 'package:taskora/generated/assets.dart';

class AddAuctionsDetailsForm extends StatelessWidget {
  const AddAuctionsDetailsForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFormField(
            postIcon: Padding(
              padding: EdgeInsets.all(12.r),
              child: SvgPicture.asset(
                Assets.svgsCurrency,
                colorFilter: const ColorFilter.mode(
                  AppColors.grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            hint: context.tr.start_price,
            stream: const Stream.empty(),
            onChanged: (value) {},
          ),
          hGap20,
          CustomFormField(
            postIcon: Padding(
              padding: EdgeInsets.all(12.r),
              child: SvgPicture.asset(
                Assets.svgsCurrency,
                colorFilter: const ColorFilter.mode(
                  AppColors.grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            hint: context.tr.bid_increment,
            stream: const Stream.empty(),
            onChanged: (value) {},
          ),
          hGap20,
          CustomFormField(
            postIcon: Padding(
              padding: EdgeInsets.all(12.r),
              child: SvgPicture.asset(
                Assets.svgsCurrency,
                colorFilter: const ColorFilter.mode(
                  AppColors.grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            hint: context.tr.secret_limit,
            stream: const Stream.empty(),
            onChanged: (value) {},
          ),
          hGap20,
          CustomFormField(
            postIcon: Padding(
              padding: EdgeInsets.all(12.r),
              child: SvgPicture.asset(
                Assets.svgsCurrency,
                colorFilter: const ColorFilter.mode(
                  AppColors.grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            hint: context.tr.announced_limit,
            stream: const Stream.empty(),
            onChanged: (value) {},
          ),
          hGap10,
          Text(
            context.tr.announced_limit_hint,
            style: CustomTextStyle.kTextStyleF11.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.grey.shade400,
            ),
          ),
          hGap15,
          const CurrentPriceSection(),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(context.tr.enable_location),
                wGap10,
                SvgPicture.asset(
                  Assets.svgsLocation,
                  height: 25.h,
                  width: 25.w,
                  colorFilter: const ColorFilter.mode(
                    AppColors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ],
            ),
          ),

          hGap15,
          CheckBoxItem(title: context.tr.auction_images),
          hGap15,
          const AddListingTypeImagesSection(),
          hGap20,
          const AddAuctionVideoSection(),
          hGap15,
          CheckBoxItem(
            title:
                '${context.tr.iAgreeToThe}'
                ' ${context.tr.terms_and_conditions}',
          ),
          hGap15,
          ElevatedButton(
            onPressed: () {
              context.pushNamedAndRemoveUntil(
                Routes.navBar,
                predicate: (route) => false,
              );
            },
            child: Text(context.tr.publish),
          ),
          hGap20,
        ],
      ),
    );
  }
}
