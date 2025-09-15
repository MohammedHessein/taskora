import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/main/settings/data/models/setting_option_model.dart';
import 'package:taskora/features/main/settings/presentation/widgets/settings_item.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final options = getSettingsOptions(context);
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            CustomSliverAppBar(
              locationFuture: LocationProvider.getLocation(),
              currentTab: Tabs.settings,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.p16.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "احمد عبد الرحمن",
                      style: CustomTextStyle.kTextStyleF20.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryBlue,
                      ),
                    ),
                    hGap8,
                    Text(
                      "مدير الموارد البشرية",
                      style: CustomTextStyle.kTextStyleF16.copyWith(
                        color: AppColors.primaryBlue,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    hGap35,
                    ...options.map(
                      (e) => SettingsItem(
                        title: e.title,
                        onTap: e.onTap,
                      ),
                    ),
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
