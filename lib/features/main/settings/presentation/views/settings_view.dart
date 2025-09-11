import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/shared/cubits/language_cubit/language_cubit.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/main/settings/presentation/widgets/settings_item.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
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
                    SettingsItem(
                      title: context.tr.personal_details,
                      onTap: () {},
                    ),
                    SettingsItem(
                      title: context.tr.account_settings,
                      onTap: () {},
                    ),
                    SettingsItem(
                      title: context.tr.packages,
                      onTap: () {},
                    ),
                    SettingsItem(
                      title: context.tr.taskora_offers,
                      onTap: () {},
                    ),
                    SettingsItem(
                      title: context.tr.advertisements,
                      onTap: () {},
                    ),
                    SettingsItem(
                      title: context.tr.auctions,
                      onTap: () {},
                    ),
                    SettingsItem(
                      title: context.tr.technical_support,
                      onTap: () {
                        context.pushNamed(Routes.technicalSupport);
                      },
                    ),
                    SettingsItem(
                      title: context.tr.privacyPolicy,
                      onTap: () {
                        context.pushNamed(Routes.privacyPolicy);
                      },
                    ),
                    SettingsItem(
                      title: context.tr.terms_of_use,
                      onTap: () {},
                    ),
                    SettingsItem(
                      title: context.tr.about_app,
                      onTap: () {
                        context.pushNamed(Routes.aboutApp);
                      },
                    ),
                    SettingsItem(
                      title: context.tr.alerts,
                      onTap: () {},
                    ),
                    SettingsItem(
                      title: context.tr.updates,
                      onTap: () {},
                    ),
                    SettingsItem(
                      title: context.tr.change_language,
                      onTap: () {
                        context.read<LanguageCubit>().toggleLanguage();
                      },
                    ),
                    SettingsItem(
                      title: context.tr.logout,
                      onTap: () {
                        context.pushNamedAndRemoveUntil(
                          Routes.login,
                          predicate: (route) => false,
                        );
                      },
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
