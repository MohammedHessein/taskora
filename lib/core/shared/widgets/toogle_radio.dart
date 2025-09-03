import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/theme_extensions.dart';

class ToggleIcon extends StatelessWidget {
  const ToggleIcon({this.label, required this.notifier, super.key});

  final String? label;
  final ValueNotifier<bool> notifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: notifier,
      builder: (context, selected, _) {
        return GestureDetector(
          onTap: () => notifier.value = !selected,
          child: Row(
            children: [
              Icon(
                selected
                    ? Icons.radio_button_checked
                    : Icons.radio_button_unchecked,
                color: selected
                    ? context.customColors.primaryBlue
                    : context.customColors.secondaryBlack.shade500,
              ),
              const SizedBox(width: 8),
              Text(label ?? ''),
            ],
          ),
        );
      },
    );
  }
}
