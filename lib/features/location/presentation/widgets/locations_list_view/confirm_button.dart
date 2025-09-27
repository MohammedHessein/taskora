import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/features/location/presentation/cubits/location_list/location_list_cubit.dart';
import 'package:taskora/features/location/presentation/cubits/location_list/location_state.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationListCubit, LocationState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: state.selectedLocation != null
                ? () => _confirmSelection(context)
                : null,
            icon: const Icon(Icons.check),
            label: Text(context.tr.common_confirm),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: AppColors.white,
              padding: EdgeInsets.symmetric(vertical: 16.h),
            ),
          ),
        );
      },
    );
  }

  Future<void> _confirmSelection(BuildContext context) async {
    final success = await context.read<LocationListCubit>().confirmSelection();
    if (success && context.mounted) {
      context.pushReplacementNamed(Routes.navBar);
    }
  }
}
