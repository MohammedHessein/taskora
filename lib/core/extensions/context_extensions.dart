import 'package:flutter/material.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/generated/l10n.dart';
import 'package:toastification/toastification.dart';

extension ContextExtensions on BuildContext {
  Future<T?> pushNamed<T>(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<T?> pushReplacementNamed<T>(String routeName, {Object? arguments}) {
    return Navigator.of(
      this,
    ).pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<T?> pushNamedAndRemoveUntil<T>(
    String routeName, {
    required RoutePredicate predicate,
    Object? arguments,
  }) {
    return Navigator.of(
      this,
    ).pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  void pop<T>(T? result) => Navigator.of(this).pop(result);

  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);

  S get tr => S.of(this);

  // void defaultSnackBar(String content, {Color? color, Color? textColor}) {
  // ScaffoldMessenger.of(this).showSnackBar(
  //       SnackBar(
  //         content: Text(
  //           content,
  //           style: TextStyle(color: textColor),
  //         ),
  //         backgroundColor: color,
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.all(
  //             Radius.circular(
  //               Dimensions.r15,
  //             ),
  //           ),
  //         ),
  //         behavior: SnackBarBehavior.floating,
  //       ),
  //     );
  //   }

  void defaultSnackBar({
    required String title,
    required String description,
    ToastificationType? type,
    Color? textColor,
  }) {
    toastification.show(
      context: this,
      type: type ?? ToastificationType.info,
      style: ToastificationStyle.fillColored,
      title: Text(title),
      description: Text(description),
      alignment: Alignment.bottomCenter,
      autoCloseDuration: const Duration(seconds: 5),
      animationBuilder: (context, animation, alignment, child) {
        return ScaleTransition(scale: animation, child: child);
      },
      foregroundColor: textColor ?? Colors.white,
      borderRadius: BorderRadius.circular(Dimensions.r12),
      closeButton: const ToastCloseButton(showType: CloseButtonShowType.none),
      applyBlurEffect: true,
      showProgressBar: false,
      closeOnClick: true,
    );
  }

  double get queryWidth => MediaQuery.of(this).size.width;

  double get queryHeight => MediaQuery.of(this).size.height;

  TextScaler get queryText => MediaQuery.of(this).textScaler;
}
