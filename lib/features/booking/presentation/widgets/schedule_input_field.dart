import 'package:flutter/material.dart';
import 'package:taskora/core/shared/widgets/custom_form_field.dart';

class ScheduleInputField extends StatelessWidget {
  const ScheduleInputField({
    required this.label,
    required this.onTap,
    this.controller,
    this.suffix,
    super.key,
  });

  final String label;
  final VoidCallback onTap;
  final TextEditingController? controller;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AbsorbPointer(
        child: CustomFormField(
          controller: controller,
          hint: label,
          stream: const Stream.empty(),
          onChanged: (_) {},
          postIcon: suffix,
        ),
      ),
    );
  }
}
