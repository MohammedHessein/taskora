import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/theme_extensions.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class CheckBoxItem extends StatefulWidget {
  const CheckBoxItem({
    required this.title,
    this.onChanged,
    super.key,
    this.style,
  });

  final String title;
  final TextStyle? style;
  final ValueChanged<bool>? onChanged;

  @override
  State<CheckBoxItem> createState() => _CheckBoxItemState();
}

class _CheckBoxItemState extends State<CheckBoxItem> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 10,
          child: Text(
            widget.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style:
                widget.style ??
                CustomTextStyle.kTextStyleF12.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondaryBlack.shade300,
                ),
          ),
        ),
        const Spacer(),
        Checkbox(
          value: _value,
          onChanged: (val) {
            setState(() => _value = val ?? false);
            widget.onChanged?.call(_value);
          },
          activeColor: context.customColors.primaryBlue,
        ),
      ],
    );
  }
}
