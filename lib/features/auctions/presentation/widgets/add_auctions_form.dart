import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/shared/widgets/custom_drop_down_menu.dart';
import 'package:taskora/core/shared/widgets/custom_form_field.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/features/listings/presentation/widgets/listing_status_field.dart';

class AddAuctionsForm extends StatelessWidget {
  const AddAuctionsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60.h,
            child: CustomDropDownMenu(
              dropdownMenuEntries: const [],
              hintText: context.tr.choose_category,
            ),
          ),
          hGap20,
          CustomFormField(
            hint: context.tr.product_address,
            stream: const Stream.empty(),
            onChanged: (value) {},
          ),
          hGap20,
          CustomFormField(
            hint: context.tr.product_description,
            stream: const Stream.empty(),
            maxLines: 4,
            onChanged: (value) {},
          ),
          hGap20,
          const StatusField(),
          hGap35,
          ElevatedButton(
            onPressed: () {
              context.pushNamed(Routes.addAuctionDetails);
            },
            child: Text(context.tr.next),
          ),
          hGap30,
        ],
      ),
    );
  }
}
