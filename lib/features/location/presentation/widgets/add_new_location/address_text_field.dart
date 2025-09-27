import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';

class AddressTextField extends StatefulWidget {
  const AddressTextField({
    required this.initialValue,
    required this.isLoading,
    required this.onChanged,
    super.key,
  });

  final String initialValue;
  final bool isLoading;
  final ValueChanged<String> onChanged;

  @override
  State<AddressTextField> createState() => AddressTextFieldState();
}

class AddressTextFieldState extends State<AddressTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  void didUpdateWidget(AddressTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialValue != oldWidget.initialValue) {
      _controller.text = widget.initialValue;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        hintText: context.tr.address,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        suffixIcon: widget.isLoading
            ? Padding(
                padding: EdgeInsets.all(12.r),
                child: SizedBox(
                  width: 16.r,
                  height: 16.r,
                  child: const CircularProgressIndicator(strokeWidth: 2),
                ),
              )
            : null,
      ),
      maxLines: 2,
      textInputAction: TextInputAction.done,
    );
  }
}
