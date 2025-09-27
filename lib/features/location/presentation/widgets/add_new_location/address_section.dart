import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/features/location/presentation/cubits/add_location/add_location_cubit.dart';
import 'package:taskora/features/location/presentation/cubits/add_location/add_location_state.dart';
import 'package:taskora/features/location/presentation/widgets/add_new_location/address_text_field.dart';

class AddressSection extends StatelessWidget {
  const AddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddLocationCubit, AddLocationState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.tr.address,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8.h),
            AddressTextField(
              initialValue: state.address,
              isLoading: state.isLoading,
              onChanged: (address) {
                context.read<AddLocationCubit>().updateAddress(address);
              },
            ),
          ],
        );
      },
    );
  }
}
