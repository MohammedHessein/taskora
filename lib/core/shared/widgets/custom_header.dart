import 'package:flutter/material.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:iconify_flutter_plus/icons/majesticons.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/extensions/theme_extensions.dart';
import 'package:taskora/core/helpers/app_helper.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: onTap ?? () => context.pop(null),
          child: Iconify(
            isEnglish()
                ? Majesticons.arrow_circle_left_line
                : Majesticons.arrow_circle_right_line,
            color: context.customColors.secondaryBlack.shade300,
          ),
        ),
      ],
    );
  }
}
