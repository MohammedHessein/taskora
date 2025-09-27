import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/features/location/presentation/cubits/add_location/add_location_cubit.dart';
import 'package:taskora/features/location/presentation/cubits/add_location/add_location_state.dart';
import 'package:toastification/toastification.dart';

class SaveLocationButton extends StatelessWidget {
  const SaveLocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddLocationCubit, AddLocationState>(
      listener: (context, state) {
        if (state.errorMessage != null) {
          context.defaultSnackBar(
            title: context.tr.error,
            description: state.errorMessage!,
            type: ToastificationType.error,
          );
          context.read<AddLocationCubit>().clearError();
        }
      },
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: state.isSaving ? null : () => saveLocation(context),
            child: state.isSaving
                ? SizedBox(
                    height: 20.h,
                    width: 20.w,
                    child: const CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  )
                : Text(context.tr.common_confirm),
          ),
        );
      },
    );
  }

  Future<void> saveLocation(BuildContext context) async {
    final result = await context.read<AddLocationCubit>().saveLocation();

    if (!context.mounted) return;

    switch (result) {
      case SaveLocationResult.success:
        context.defaultSnackBar(
          title: context.tr.success,
          description: context.tr.location_saved_successfully,
          type: ToastificationType.success,
        );
        context.pushReplacementNamed(Routes.locationsListView);

      case SaveLocationResult.duplicate:
        context.defaultSnackBar(
          title: context.tr.warning,
          description: context.tr.this_address_already_exists,
          type: ToastificationType.warning,
        );

      case SaveLocationResult.missingData:
        context.defaultSnackBar(
          title: context.tr.error,
          description: context.tr.please_select_location_and_enter_address,
          type: ToastificationType.error,
        );

      case SaveLocationResult.error:
        break;
    }
  }
}
