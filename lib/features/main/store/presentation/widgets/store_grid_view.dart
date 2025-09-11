import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/features/main/store/data/models/store_item_model.dart';
import 'package:taskora/features/main/store/presentation/widgets/store_grid_item.dart';

class StoreGridView extends StatefulWidget {
  const StoreGridView({super.key});

  @override
  State<StoreGridView> createState() => _StoreGridViewState();
}

class _StoreGridViewState extends State<StoreGridView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final items = StoreItemModel.getDummyStoreItems(
      context: context,
    );

    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) => StoreGridItem(item: items[index]),
        childCount: items.length,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 12.h,
        childAspectRatio: 0.55,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
