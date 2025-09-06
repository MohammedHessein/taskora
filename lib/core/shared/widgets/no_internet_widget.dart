import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/generated/assets.dart';

import '../../../generated/app_localizations.dart';

class NoInternetWidget extends StatelessWidget {
  const NoInternetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    /*return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            child: SvgPicture.asset(
              AppImages.svgs.wifi.path,
              height: 135.h,
              width: 150.w,
            ),
          ),
          Gap(20.h),
          Text(
            AppLocalizations.of(context)!.NoInternetWidget_noInternetConnection,
            textAlign: TextAlign.center,
            style: CustomTextStyle.kTextStyleF18,
          ),
          Gap(10.h),
          Text(
            AppLocalizations.of(context)!.NoInternetWidget_checkInternetConnection,
            textAlign: TextAlign.center,
            style: CustomTextStyle.kTextStyleF14,
          ),
        ],
      ),
    );*/
    return Scaffold(
      backgroundColor: AppColors.secondaryWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.all(Dimensions.p16),
          child: Column(
            children: [
              const Spacer(flex: 2),
              SizedBox(
                width: context.queryWidth * 0.8,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: SvgPicture.string(
                    Assets.svgsRat,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              const Spacer(flex: 2),
              ErrorInfo(
                title: AppLocalizations.of(context)!.noInternetWidget_noInternetConnection,
                description: AppLocalizations.of(context)!.noInternetWidget_checkConnection,
                // button: you can pass your custom button,
                // btnText: default is retry, you can pass your custom text,
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ErrorInfo extends StatelessWidget {
  const ErrorInfo({
    required this.title,
    required this.description,
    required this.press,
    super.key,
    this.button,
    this.btnText,
  });

  final String title;
  final String description;
  final Widget? button;
  final String? btnText;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 400),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: CustomTextStyle.kTextStyleF20.copyWith(
                fontWeight: Dimensions.w700Bold,
              ),
            ),
            hGap15,
            Text(description, textAlign: TextAlign.center),
            const Gap(16 * 2.5),
            button ??
                ElevatedButton(
                  onPressed: press,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(side: BorderSide()),
                  ),
                  child: Text(btnText ?? "Retry".toUpperCase()),
                ),
            hGap15,
          ],
        ),
      ),
    );
  }
}
