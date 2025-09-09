import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:iconify_flutter_plus/icons/mdi.dart';
import 'package:taskora/core/extensions/theme_extensions.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

import 'package:taskora/generated/l10n.dart';

class NetworkImageError extends StatelessWidget {
  const NetworkImageError({super.key});

  ///
  /// A widget to be used when a network image fails to load.
  ///
  /// This widget displays a broken image icon and a text that reads "No image available"
  /// in red color.
  ///
  /// The text is translated using the S class from the l10n library.
  ///
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Iconify(
          Mdi.image_broken_variant,
          color: context.customColors.errorColor,
        ),
        /* Icon(
          MdiIcons.imageBroken,
          color: context.customColors.errorColor,
        ), */
        Gap(5.h),
        Text(
          S.of(context).general_noImageAvailable,
          style: CustomTextStyle.kTextStyleF12.copyWith(
            color: context.customColors.errorColor,
          ),
        ),
      ],
    );
  }
}
