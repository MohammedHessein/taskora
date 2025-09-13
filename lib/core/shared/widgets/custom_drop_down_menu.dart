import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskora/generated/assets.dart';

class CustomDropDownMenu extends StatelessWidget {
  const CustomDropDownMenu({
    this.dropdownMenuEntries,
    this.hintText,
    this.showTrailingIcon = true,
    this.enabled = true,
    super.key,
  });

  final List<DropdownMenuEntry>? dropdownMenuEntries;
  final String? hintText;
  final bool? showTrailingIcon;
  final bool? enabled;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      enabled: enabled ?? true,
      showTrailingIcon: showTrailingIcon ?? true,
      hintText: hintText,
      trailingIcon: SvgPicture.asset(
        Assets.svgsArrowDown,
      ),
      selectedTrailingIcon: SvgPicture.asset(
        Assets.svgsArrowDown,
      ),
      dropdownMenuEntries: dropdownMenuEntries ?? [],
      expandedInsets: EdgeInsets.zero,
    );
  }
}
