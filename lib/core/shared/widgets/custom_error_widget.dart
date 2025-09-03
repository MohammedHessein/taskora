import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:iconify_flutter_plus/icons/mdi.dart';
import 'package:taskora/core/extensions/theme_extensions.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/utils/dimensions.dart';

import '../../../generated/l10n.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({required this.error, super.key});
  final FlutterErrorDetails error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.errorWidgets_errorOccurred),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Iconify(
                Mdi.alert_box,
                color: context.customColors.errorColor,
                size: 80.sp,
              ),
              /* Icon(
              MdiIcons.alertBox,
              color: context.customColors.errorColor,
              size: 80.sp,
            ), */
              hGap15,
              Text(
                S.current.errorWidgets_errorOccurred,
                style: TextStyle(
                  fontSize: Dimensions.f24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              hGap10,
              Text(
                "${S.current.errorWidgets_errorSummary}:",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: Dimensions.f16,
                  fontWeight: FontWeight.bold,
                  color: context.customColors.errorColor,
                ),
              ),
              Text(
                error.summary.toDescription(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: Dimensions.f16),
              ),
              hGap10,
              Text(
                "${S.current.errorWidgets_errorContext}:",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: Dimensions.f16,
                  fontWeight: FontWeight.bold,
                  color: context.customColors.errorColor,
                ),
              ),
              Text(
                error.context.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: Dimensions.f16),
              ),
              hGap10,
              Text(
                "${S.current.errorWidgets_exception}:",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: Dimensions.f16,
                  fontWeight: FontWeight.bold,
                  color: context.customColors.errorColor,
                ),
              ),
              Text(
                error.exceptionAsString(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: Dimensions.f16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ErrorWidgetClass extends StatelessWidget {
  const ErrorWidgetClass({required this.errorDetails, super.key});
  final FlutterErrorDetails errorDetails;

  @override
  Widget build(BuildContext context) {
    return CustomErrorWidget(error: errorDetails);
  }
}
