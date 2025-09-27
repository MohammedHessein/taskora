import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/features/location/data/models/location_model.dart';
import 'package:taskora/features/location/presentation/cubits/location_list/location_list_cubit.dart';
import 'package:toastification/toastification.dart';

class LocationItemActions extends StatelessWidget {
  const LocationItemActions({
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
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: const Icon(Icons.map),
          onPressed: () => _viewLocationOnMap(context),
          tooltip: context.tr.view_on_map,
        ),
        IconButton(
          icon: Icon(
            Icons.delete,
            color: Colors.red.shade400,
          ),
          onPressed: () => _deleteLocation(context),
          tooltip: context.tr.delete_location,
        ),
        if (isSelected)
          Icon(
            Icons.check_circle,
            color: AppColors.primary,
            size: 20.r,
          ),
      ],
    );
  }

  void _viewLocationOnMap(BuildContext context) {
    context.pushNamed(
      Routes.viewLocationOnMap,
      arguments: {
        "lat": location.lat,
        "lng": location.lng,
        "address": location.address,
      },
    );
  }

  Future<void> _deleteLocation(BuildContext context) async {
    final shouldDelete = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(context.tr.confirm_delete),
        content: Text(context.tr.are_you_sure_delete_location),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(context.tr.common_cancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: Text(context.tr.common_delete),
          ),
        ],
      ),
    );

    if (shouldDelete ?? false) {
      final success = await context.read<LocationListCubit>().deleteLocation(
        index,
      );
      if (success && context.mounted) {
        context.defaultSnackBar(
          title: context.tr.success,
          description: context.tr.location_deleted_successfully,
          type: ToastificationType.success,
        );
      }
    }
  }
}
