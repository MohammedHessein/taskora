import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/ads/presentation/widgets/add_advertisement_form.dart';
import 'package:taskora/features/auctions/presentation/widgets/add_auctions_form.dart';
import 'package:taskora/features/listings/presentation/widgets/add_listing_header.dart';
import 'package:taskora/features/listings/presentation/widgets/listing_type_button.dart';

class AddListingView extends StatefulWidget {
  const AddListingView({super.key});

  @override
  State<AddListingView> createState() => _AddListingViewState();
}

class _AddListingViewState extends State<AddListingView> {
  late ListingType listingType;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args = ModalRoute.of(context)?.settings.arguments;
    listingType = args is ListingType ? args : ListingType.advertisement;
  }

  void changeType(ListingType type) {
    setState(() {
      listingType = type;
    });
  }

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
                padding: EdgeInsets.symmetric(horizontal: Dimensions.p16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AddListingHeader(listingType: listingType),
                    hGap25,
                    Row(
                      children: [
                        ListingTypeButton(
                          label: context.tr.advertisement,
                          type: ListingType.advertisement,
                          selectedType: listingType,
                          onTap: () => changeType(ListingType.advertisement),
                        ),
                        wGap10,
                        ListingTypeButton(
                          label: context.tr.auction,
                          type: ListingType.auction,
                          selectedType: listingType,
                          onTap: () => changeType(ListingType.auction),
                        ),
                      ],
                    ),
                    hGap25,
                    if (listingType == ListingType.advertisement)
                      const AddAdvertisementForm()
                    else
                      const AddAuctionsForm(),
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
