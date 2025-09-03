import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:taskora/core/theme/app_colors.dart';

class NetworkImageProgress extends StatelessWidget {
  const NetworkImageProgress({required this.downloadProgress, super.key});
  final DownloadProgress downloadProgress;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: AppColors.primaryBlue,
        value: downloadProgress.progress,
      ),
    );
  }
}
