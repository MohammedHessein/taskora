import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/auctions/presentation/widgets/add_auctions_details_form.dart';
import 'package:taskora/features/listings/presentation/widgets/listing_type_number.dart';
import 'package:taskora/features/listings/presentation/widgets/listing_type_purpose.dart';
import 'package:taskora/features/listings/presentation/widgets/second_add_step_header.dart';

class AddAuctionsDetailsView extends StatefulWidget {
  const AddAuctionsDetailsView({super.key});

  @override
  State<AddAuctionsDetailsView> createState() => _AddAuctionsDetailsViewState();
}

class _AddAuctionsDetailsViewState extends State<AddAuctionsDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(
              locationFuture: LocationProvider.getLocation(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: Dimensions.p16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SecondAddStepHeader(
                      listingType: ListingType.auction,
                    ),
                    hGap25,
                    const ListingTypeNumber(
                      listingType: ListingType.auction,
                    ),
                    hGap10,
                    const ListingTypePurpose(
                      listingType: ListingType.auction,
                    ),
                    hGap20,
                    SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          context.tr.purpose_sale,
                          style: CustomTextStyle.kTextStyleF14.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                    hGap25,
                    const AddAuctionsDetailsForm(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
