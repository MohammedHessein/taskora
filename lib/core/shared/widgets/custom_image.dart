import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomImage extends StatelessWidget {

  const CustomImage({
    required this.path,
    super.key,
    this.height,
    this.width,
    this.fit = BoxFit.scaleDown,
    this.color,
  });
  final String path;
  final double? height;
  final double? width;
  final BoxFit fit;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    if (path.endsWith("svg")) {
      return SvgPicture.asset(
        path,
        fit: fit,
        height: height!.h,
        width: width!.w,
        colorFilter: ColorFilter.mode(color!, BlendMode.srcIn),
      );
    } else if (path.startsWith("http")) {
      return CachedNetworkImage(
        imageUrl: path,
        fit: fit,
        height: height!.h,
        width: width!.w,
        color: color,
      );
    } else if (path.startsWith("json")) {
      return CachedNetworkImage(
        imageUrl: path,
        fit: fit,
        height: height!.h,
        width: width!.w,
        color: color,
      );
    } else {
      return Image.asset(
        path,
        fit: fit,
        height: height!.h,
        width: width!.w,
        color: color,
      );
    }
  }
}
