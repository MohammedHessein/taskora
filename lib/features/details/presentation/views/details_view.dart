import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/router/route_arguments.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/main/home/presentation/widgets/carousel_service_widget.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments! as DetailsArgs;
    var title = "";
    var description = "";
    String? image;
    String? price;
    String? brand;

    switch (args.detailsType) {
      case DetailsType.product:
        title = args.product?.title ?? "";
        description = args.product?.description ?? "";
        image = args.product?.imageUrl;

      case DetailsType.service:
        title = args.service?["title"] ?? "";
        description = args.service?["description"] ?? "";
        image = args.service?["imageUrl"];

      case DetailsType.cartItem:
        title = args.cartItem?.name ?? "";
        price = args.cartItem?.price.toString();
        brand = args.cartItem?.brand;
    }

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
                    Text(
                      title,
                      style: CustomTextStyle.kTextStyleF16.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryBlue,
                      ),
                    ),
                    hGap20,
                    if (image != null && image.isNotEmpty)
                      Center(
                        child: Image.asset(
                          image,
                          height: 180.h,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    hGap20,
                    if (description.isNotEmpty) ...[
                      Text(
                        context.tr.service_details,
                        style: CustomTextStyle.kTextStyleF14.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryBlue,
                        ),
                      ),
                      hGap10,
                      Text(
                        description,
                        style: CustomTextStyle.kTextStyleF12.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryBlue,
                        ),
                      ),
                      hGap20,
                    ],
                    if (args.detailsType == DetailsType.cartItem) ...[
                      if (price != null)
                        Text(
                          "${context.tr.price}: $price",
                          style: CustomTextStyle.kTextStyleF14.copyWith(
                            color: AppColors.primaryBlue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      if (brand != null) ...[
                        hGap10,
                        Text(
                          "${context.tr.brand}: $brand",
                          style: CustomTextStyle.kTextStyleF12.copyWith(
                            color: AppColors.primaryBlue,
                          ),
                        ),
                      ],
                      hGap20,
                    ],
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(context.tr.book),
                    ),
                    hGap35,
                    const CarouselServiceWidget(),
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
