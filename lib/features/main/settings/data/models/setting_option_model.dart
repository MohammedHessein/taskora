import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/shared/cubits/language_cubit/language_cubit.dart';
import 'package:taskora/core/shared/enums.dart';

class SettingOption {
  const SettingOption({required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;
}

List<SettingOption> getSettingsOptions(BuildContext context) => [
  SettingOption(title: context.tr.personal_details, onTap: () {}),
  SettingOption(title: context.tr.account_settings, onTap: () {}),
  SettingOption(
    title: context.tr.packages,
    onTap: () => context.pushNamed(Routes.packages),
  ),
  SettingOption(
    title: context.tr.taskora_gifts,
    onTap: () => context.pushNamed(Routes.gifts),
  ),
  SettingOption(
    title: context.tr.advertisements,
    onTap: () {
      context.pushNamed(
        Routes.ads,
      );
    },
  ),
  SettingOption(title: context.tr.auctions, onTap: () {}),
  SettingOption(
    title: context.tr.add_ad,
    onTap: () => context.pushNamed(
      Routes.addListing,
      arguments: ListingType.advertisement,
    ),
  ),
  SettingOption(
    title: context.tr.add_auction,
    onTap: () => context.pushNamed(
      Routes.addListing,
      arguments: ListingType.auction,
    ),
  ),
  SettingOption(
    title: context.tr.technical_support,
    onTap: () => context.pushNamed(Routes.technicalSupport),
  ),
  SettingOption(
    title: context.tr.privacyPolicy,
    onTap: () => context.pushNamed(Routes.privacyPolicy),
  ),
  SettingOption(title: context.tr.terms_of_use, onTap: () {}),
  SettingOption(
    title: context.tr.about_app,
    onTap: () => context.pushNamed(Routes.aboutApp),
  ),
  SettingOption(title: context.tr.alerts, onTap: () {}),
  SettingOption(title: context.tr.updates, onTap: () {}),
  SettingOption(
    title: context.tr.change_language,
    onTap: () => context.read<LanguageCubit>().toggleLanguage(),
  ),
  SettingOption(
    title: context.tr.logout,
    onTap: () => context.pushNamedAndRemoveUntil(
      Routes.login,
      predicate: (route) => false,
    ),
  ),
];
