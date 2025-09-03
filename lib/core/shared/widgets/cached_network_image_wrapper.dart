import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskora/core/shared/widgets/network_image_progressor.dart';
import 'package:taskora/generated/assets.dart';

class CachedNetworkImageWrapper extends StatelessWidget {
  const CachedNetworkImageWrapper({
    required this.imageUrl,
    super.key,
    this.height,
    this.width,
    this.fit,
  });

  final String imageUrl;
  final double? height;
  final double? width;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      height: height,
      width: width,
      fit: fit,
      progressIndicatorBuilder: (_, __, downloadProgress) =>
          NetworkImageProgress(downloadProgress: downloadProgress),
      errorWidget: (_, __, ___) => SvgPicture.asset(
        Assets.svgsRat,
        height: height,
        width: width ?? double.infinity,
      ),
    );
  }
}
