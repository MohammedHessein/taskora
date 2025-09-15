import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/features/packages/data/models/package_model.dart';
import 'package:taskora/features/packages/presentation/widgets/package_card.dart';

class PackagesListView extends StatelessWidget {
  const PackagesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 420.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dummyPackages.length,
        itemBuilder: (context, index) {
          return PackageCard(package: dummyPackages[index]);
        },
      ),
    );
  }
}
