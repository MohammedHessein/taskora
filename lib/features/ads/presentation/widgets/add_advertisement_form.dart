import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/shared/widgets/custom_drop_down_menu.dart';
import 'package:taskora/core/shared/widgets/custom_form_field.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/features/listings/presentation/widgets/listing_status_field.dart';

class AddAdvertisementForm extends StatelessWidget {
  const AddAdvertisementForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60.h,
            child: CustomDropDownMenu(
              dropdownMenuEntries: [],
              hintText: context.tr.choose_ad_category,
            ),
          ),
          hGap20,
          CustomFormField(
            hint: context.tr.ad_address,
            stream: const Stream.empty(),
            onChanged: (value) {},
          ),
          hGap20,
          CustomFormField(
            hint: context.tr.ad_description,
            stream: const Stream.empty(),
            maxLines: 4,
            onChanged: (value) {},
          ),
          hGap20,
          const StatusField(),
          hGap35,
          ElevatedButton(
            onPressed: () {
              context.pushNamed(Routes.addAdDetails);
            },
            child: Text(context.tr.next),
          ),
          hGap30,
        ],
      ),
    );
  }
}
