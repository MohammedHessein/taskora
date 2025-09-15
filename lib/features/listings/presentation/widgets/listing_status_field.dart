import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/shared/widgets/toogle_radio.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';

class StatusField extends StatefulWidget {
  const StatusField({super.key});

  @override
  State<StatusField> createState() => _StatusFieldState();
}

class _StatusFieldState extends State<StatusField> {
  final statusNotifier = ValueNotifier<ListingStatus?>(null);

  Future<void> selectStatus(ListingStatus status) async {
    statusNotifier.value = status;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.tr.status,
          textAlign: TextAlign.start,
          style: CustomTextStyle.kTextStyleF12.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColors.grey.shade300,
          ),
        ),
        hGap10,
        ValueListenableBuilder<ListingStatus?>(
          valueListenable: statusNotifier,
          builder: (context, value, _) {
            return Row(
              children: [
                Expanded(
                  child: ToggleIcon(
                    selected: value == ListingStatus.new_,
                    onTap: () => selectStatus(ListingStatus.new_),
                    label: context.tr.status_new,
                  ),
                ),
                wGap10,
                Expanded(
                  child: ToggleIcon(
                    selected: value == ListingStatus.used,
                    onTap: () => selectStatus(ListingStatus.used),
                    label: context.tr.used,
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
