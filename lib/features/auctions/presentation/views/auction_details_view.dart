import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/shared/widgets/custom_form_field.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/auctions/data/models/auction_model.dart';
import 'package:taskora/features/auctions/presentation/widgets/auction_status_section.dart';
import 'package:taskora/features/auctions/presentation/widgets/auction_video_section.dart';
import 'package:taskora/features/auctions/presentation/widgets/auctions_comments_section.dart';
import 'package:taskora/features/listings/presentation/widgets/contact_the_advertiser_section.dart';
import 'package:taskora/features/listings/presentation/widgets/listing_type_advantages_section.dart';
import 'package:taskora/features/listings/presentation/widgets/listing_type_details_image_section.dart';
import 'package:taskora/features/listings/presentation/widgets/listing_type_details_images_list.dart';
import 'package:taskora/features/listings/presentation/widgets/listing_type_details_section.dart';
import 'package:taskora/features/listings/presentation/widgets/listing_type_number_section.dart';
import 'package:taskora/features/listings/presentation/widgets/location_and_public_facilities_section.dart';
import 'package:taskora/features/main/home/presentation/widgets/carousel_service_widget.dart';

class AuctionDetailsView extends StatelessWidget {
  const AuctionDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments! as AuctionModel;
    final auction = args;
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(
              locationFuture: LocationProvider.getLocation(),
            ),
            SliverToBoxAdapter(child: hGap20),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.p16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListingTypeDetailsImageSection(
                      listingType: ListingType.auction,
                      image: auction.imageUrl,
                    ),
                    hGap25,
                    ListingTypeDetailsImagesList(
                      image: auction.imageUrl,
                      listingType: ListingType.auction,
                    ),
                    hGap15,
                    ListingTypeNumberSection(
                      status: auction.status,
                      listingType: ListingType.auction,
                    ),
                    hGap15,
                    const ListingTypeDetailsSection(
                      listingType: ListingType.auction,
                    ),
                    hGap15,
                    AuctionVideoSection(image: auction.imageUrl),
                    hGap25,
                    const ContactTheAdvertiserSection(),
                    hGap25,
                    const ListingTypeAdvantagesSection(),
                    hGap25,
                    const LocationAndPublicFacilitiesSection(),
                    hGap25,
                    AuctionStatusSection(auction: auction),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              context.tr.auto_increment,
                            ),
                          ),
                        ),
                        SizedBox(width: 12.w),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.white,
                              foregroundColor: AppColors.primaryBlue,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: AppColors.primaryBlue,
                                ),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              padding: EdgeInsets.symmetric(vertical: 12.h),
                              elevation: 0,
                            ),
                            child: Text(
                              context.tr.bidding,
                            ),
                          ),
                        ),
                      ],
                    ),
                    hGap15,
                    Center(
                      child: Text(
                        "${context.tr.bidding_is_at_a_value_of}: \t5000 ريال",
                        style: CustomTextStyle.kTextStyleF12,
                      ),
                    ),
                    hGap15,
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.white,
                        foregroundColor: AppColors.primaryBlue,
                        elevation: 0,
                      ),
                      onPressed: () {},
                      child: Text(
                        context.tr.secure_payment,
                      ),
                    ),
                    hGap15,
                    const AuctionsCommentsSection(),
                    hGap10,
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: AppColors.white,
                        foregroundColor: AppColors.primaryBlue,
                        side: const BorderSide(color: AppColors.primaryBlue),
                      ),
                      onPressed: () {},
                      child: Text(context.tr.show_all),
                    ),
                    hGap20,
                    CustomFormField(
                      hint: context.tr.comment,
                      stream: const Stream.empty(),
                      maxLines: 4,
                      onChanged: (value) {},
                      trailingButton: SizedBox(
                        width: 50.w,
                        height: 40.h,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              context.tr.review,
                              style: CustomTextStyle.kTextStyleF10.copyWith(
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    hGap20,
                    const CarouselServiceWidget(),
                    hGap20,
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
