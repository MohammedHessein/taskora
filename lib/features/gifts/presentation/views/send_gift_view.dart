import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/shared/widgets/custom_form_field.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/gifts/presentation/widgets/carousel_gifts_widget.dart';
import 'package:taskora/features/gifts/presentation/widgets/payment_method_selector.dart';

class SendGiftView extends StatelessWidget {
  const SendGiftView({super.key});

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
                    Text(
                      context.tr.send_gift,
                      style: CustomTextStyle.kTextStyleF16.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryBlue,
                      ),
                    ),
                    hGap35,
                    Text(
                      context.tr.gift_details,
                      style: CustomTextStyle.kTextStyleF16.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryBlue,
                      ),
                    ),
                    hGap35,
                    Row(
                      children: [
                        Expanded(
                          child: CustomFormField(
                            stream: const Stream.empty(),
                            onChanged: (firstName) {},
                            label: context.tr.firstName,
                            preIcon: const Icon(Icons.person),
                            nextAction: TextInputAction.next,
                          ),
                        ),
                        wGap15,
                        Expanded(
                          child: CustomFormField(
                            stream: const Stream.empty(),
                            onChanged: (lastName) {},
                            label: context.tr.lastName,
                            preIcon: const Icon(Icons.person),
                            nextAction: TextInputAction.next,
                          ),
                        ),
                      ],
                    ),
                    hGap20,
                    CustomFormField(
                      stream: const Stream.empty(),
                      onChanged: (phone) {},
                      label: context
                          .tr
                          .pleaseEnterYourMobileNumberToReceiveActivationCode,
                      preIcon: CountryCodePicker(
                        headerTextStyle: CustomTextStyle.kTextStyleF20,
                        initialSelection: 'SA',
                        favorite: const ['966', 'SA'],
                        onChanged: (code) {},
                        onInit: (code) {},
                        textStyle: CustomTextStyle.kTextStyleF10,
                      ),
                      keyboardType: TextInputType.phone,
                      nextAction: TextInputAction.next,
                    ),
                    hGap20,
                    CustomFormField(
                      stream: const Stream.empty(),
                      onChanged: (giftValue) {},
                      label: context.tr.gift_value,
                      nextAction: TextInputAction.done,
                    ),
                    hGap35,
                    Text(
                      context.tr.choose_payment_method,
                      style: CustomTextStyle.kTextStyleF14.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppColors.primaryBlue,
                      ),
                    ),
                    hGap15,
                    const PaymentMethodSelector(),
                    hGap100,
                    const CarouselGiftsWidget(),
                    hGap35,
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
