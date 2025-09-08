import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/main/home/data/models/technical_service_model.dart';
import 'package:taskora/features/main/home/presentation/widgets/carousel_service_widget.dart';
import 'package:taskora/features/main/home/presentation/widgets/service_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final services = getTechnicalServices(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(
          Dimensions.p16,
          Dimensions.p34,
          Dimensions.p16,
          Dimensions.p16,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              hGap20,
              Text(
                context.tr.services_title,
                style: CustomTextStyle.kTextStyleF16.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              hGap8,
              Text(
                context.tr.services_subtitle,
                style: CustomTextStyle.kTextStyleF12.copyWith(
                  color: AppColors.grey.withValues(alpha: 0.8),
                ),
              ),
              hGap20,

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: services.take(2).map((service) {
                  return ServiceItem(
                    service: service,
                    width: (MediaQuery.of(context).size.width - 48.w) / 2,
                  );
                }).toList(),
              ),
              SizedBox(height: 16.h),
              Wrap(
                spacing: 12.w,
                runSpacing: 14.h,
                children: List.generate(services.length - 2, (index) {
                  final service = services[index + 2];
                  final itemWidth =
                      (MediaQuery.of(context).size.width - 150.w) / 3;

                  return ServiceItem(service: service, width: itemWidth);
                }),
              ),
              hGap20,
              const CarouselServiceWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
