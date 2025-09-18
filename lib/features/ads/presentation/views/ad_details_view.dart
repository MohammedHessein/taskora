import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/ads/data/models/base_ad_model.dart';
import 'package:taskora/features/ads/presentation/widgets/ad_details_ratings_section.dart';
import 'package:taskora/features/listings/presentation/widgets/contact_the_advertiser_section.dart';
import 'package:taskora/features/listings/presentation/widgets/listing_type_advantages_section.dart';
import 'package:taskora/features/listings/presentation/widgets/listing_type_details_image_section.dart';
import 'package:taskora/features/listings/presentation/widgets/listing_type_details_images_list.dart';
import 'package:taskora/features/listings/presentation/widgets/listing_type_details_section.dart';
import 'package:taskora/features/listings/presentation/widgets/listing_type_number_section.dart';
import 'package:taskora/features/listings/presentation/widgets/location_and_public_facilities_section.dart';

class AdDetailsView extends StatelessWidget {
  const AdDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments! as BaseAd;
    final baseAd = args;
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(
              locationFuture: LocationProvider.getLocation(),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: Dimensions.p16),
              sliver: SliverList(
                delegate: SliverChildListDelegate.fixed(
                  [
                    hGap25,
                    ListingTypeDetailsImageSection(
                      baseAd: baseAd,
                      listingType: ListingType.advertisement,
                      image: baseAd.imageUrl,
                    ),
                    hGap25,
                    ListingTypeDetailsImagesList(
                      baseAd: baseAd,
                      listingType: ListingType.advertisement,
                      image: baseAd.imageUrl,
                    ),
                    hGap15,
                    const ListingTypeNumberSection(
                      listingType: ListingType.advertisement,
                    ),
                    hGap15,
                    const ListingTypeDetailsSection(
                      listingType: ListingType.advertisement,
                    ),
                    hGap25,
                    const ContactTheAdvertiserSection(),
                    hGap25,
                    const ListingTypeAdvantagesSection(),
                    hGap25,
                    const LocationAndPublicFacilitiesSection(),
                    hGap25,
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: AppColors.white,
                        foregroundColor: AppColors.primaryBlue,
                        side: const BorderSide(color: AppColors.primaryBlue),
                      ),
                      onPressed: () {
                        context.pushNamed(Routes.firstStepBooking);
                      },
                      child: Text(context.tr.secure_payment),
                    ),
                    hGap25,
                    const AdDetailsRatingsSection(),
                    hGap25,
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
