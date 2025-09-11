import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/gifts/presentation/widgets/carousel_gifts_widget.dart';
import 'package:taskora/features/main/home/presentation/widgets/carousel_service_widget.dart';

class GiftsView extends StatelessWidget {
  const GiftsView({super.key});

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
                    Text(
                      context.tr.taskora_gifts,
                      style: CustomTextStyle.kTextStyleF16.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryBlue,
                      ),
                    ),
                    hGap20,
                    const CarouselGiftsWidget(),
                    hGap35,
                    ElevatedButton(
                      onPressed: () {
                        context.pushNamed(Routes.sendGift);
                      },
                      child: Text(
                        context.tr.send_gift,
                        style: CustomTextStyle.kTextStyleF14.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    hGap100,
                    const CarouselServiceWidget(),
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
