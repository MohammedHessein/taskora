import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class CustomFormField extends StatefulWidget {
  const CustomFormField({
    required this.stream,
    required this.onChanged,
    super.key,
    this.isPassword = false,
    this.keyboardType,
    this.nextAction,
    this.maxLength,
    this.maxLines = 1,
    this.initValue,
    this.preIcon,
    this.postIcon,
    this.label,
    this.hint,
    this.helperText,
    this.floatingLabel = false,
    this.formatters,
    this.contentPadding,
    this.controller,
    this.trailingButton,
  });

  final Stream stream;
  final Function(String) onChanged;
  final bool isPassword;
  final TextInputType? keyboardType;
  final TextInputAction? nextAction;
  final int? maxLength;
  final int? maxLines;
  final String? initValue;
  final Widget? preIcon;
  final Widget? postIcon;
  final String? label;
  final String? hint;
  final String? helperText;
  final bool floatingLabel;
  final List<TextInputFormatter>? formatters;
  final EdgeInsetsGeometry? contentPadding;
  final TextEditingController? controller;
  final Widget? trailingButton;

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: widget.stream,
      builder: (ctx, snapShot) {
        return Stack(
          children: [
            TextFormField(
              controller: widget.controller,
              onChanged: widget.onChanged,
              obscureText: widget.isPassword,
              obscuringCharacter: "*",
              keyboardType: widget.keyboardType,
              textInputAction: widget.nextAction,
              maxLength: widget.maxLength,
              maxLines: widget.maxLines,
              initialValue: widget.initValue,
              inputFormatters: widget.formatters,
              style: CustomTextStyle.kFormFieldTextStyle,
              decoration: InputDecoration(
                alignLabelWithHint: true,
                contentPadding:
                    widget.contentPadding ??
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                prefixIcon: widget.preIcon,
                suffixIcon: widget.postIcon,
                counter: const Offstage(),
                labelText: widget.label,
                floatingLabelBehavior: widget.floatingLabel
                    ? FloatingLabelBehavior.always
                    : FloatingLabelBehavior.auto,
                helperText: widget.helperText,
                hintText: widget.hint,
                errorText: snapShot.hasError ? snapShot.error.toString() : null,
              ),
            ),
            if (widget.trailingButton != null)
              Positioned(
                bottom: 8,
                left: Directionality.of(context) == TextDirection.rtl
                    ? 8
                    : null,
                right: Directionality.of(context) == TextDirection.rtl
                    ? null
                    : 8,
                child: widget.trailingButton!,
              ),
          ],
        );
      },
    );
  }
}
