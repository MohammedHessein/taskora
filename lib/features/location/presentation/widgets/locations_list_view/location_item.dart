import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/features/location/data/models/location_model.dart';
import 'package:taskora/features/location/presentation/cubits/location_list/location_list_cubit.dart';
import 'package:taskora/features/location/presentation/widgets/locations_list_view/location_item_actions.dart';
import 'package:toastification/toastification.dart';

class LocationItem extends StatelessWidget {
  const LocationItem({
    required this.location,
    required this.index,
    required this.isSelected,
    super.key,
  });

  final LocationModel location;
  final int index;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.grey.shade300,
            width: isSelected ? 2 : 1,
          ),
          color: isSelected ? AppColors.primary.withValues(alpha: 0.1) : null,
        ),
        child: ListTile(
          contentPadding: EdgeInsets.all(16.r),
          leading: Icon(
            Icons.location_on,
            color: isSelected ? AppColors.primary : AppColors.grey,
            size: 24.sp,
          ),
          title: Text(
            location.address.isEmpty
                ? "${context.tr.address_location} ${index + 1}"
                : location.address,
            style: CustomTextStyle.kTextStyleF16.copyWith(
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              color: isSelected ? AppColors.primary : null,
            ),
          ),
          subtitle: Text(
            "${location.lat.toStringAsFixed(4)}, ${location.lng.toStringAsFixed(4)}",
            style: CustomTextStyle.kTextStyleF12.copyWith(
              color: AppColors.grey.shade600,
            ),
          ),
          trailing: LocationItemActions(
            location: location,
            index: index,
            isSelected: isSelected,
          ),
          onTap: () => _selectLocation(context, index),
        ),
      ),
    );
  }

  void _selectLocation(BuildContext context, int index) {
    context.read<LocationListCubit>().selectLocation(index);

    context.defaultSnackBar(
      title: context.tr.location_selected,
      description: location.address.isEmpty
          ? "${context.tr.address_location} ${index + 1}"
          : location.address,
      type: ToastificationType.success,
    );
  }
}
