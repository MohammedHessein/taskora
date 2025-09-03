import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/theme_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class DefaultAlertDialog extends StatelessWidget {
  const DefaultAlertDialog({
    required this.btn1,
    required this.btn2,
    required this.title,
    super.key,
    this.onPressed1,
    this.onPressed2,
  });
  final String title;
  final String btn1;
  final String btn2;
  final VoidCallback? onPressed1;
  final VoidCallback? onPressed2;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.customColors.secondaryWhite,
      content: Text(
        title,
        style: CustomTextStyle.kTextStyleF18.copyWith(
          color: context.customColors.secondaryBlack,
        ),
        textAlign: TextAlign.center,
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: ElevatedButton(
                onPressed: onPressed1,
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      context.customColors.primaryBlue, // Background color
                ),
                child: Text(
                  btn1,
                  style: TextStyle(color: context.customColors.secondaryWhite),
                ),
              ),
            ),
            wGap10,
            Flexible(
              child: ElevatedButton(
                onPressed: onPressed2,
                style: ElevatedButton.styleFrom(
                  backgroundColor: context.customColors.primaryBlue,
                ),
                child: Text(
                  btn2,
                  style: TextStyle(color: context.customColors.secondaryWhite),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
