import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/main/requests/presentation/widgets/requests_list.dart';

class RequestsView extends StatelessWidget {
  const RequestsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            CustomSliverAppBar(
              locationFuture: LocationProvider.getLocation(),
              currentTab: Tabs.requests,
            ),
            SliverPadding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: Dimensions.p16.w,
                vertical: Dimensions.p16.h,
              ),
              sliver: const RequestsList(),
            ),
          ],
        ),
      ),
    );
  }
}
