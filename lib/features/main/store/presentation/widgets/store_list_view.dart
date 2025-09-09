import 'package:flutter/material.dart';
import 'package:taskora/features/main/store/data/models/store_item_model.dart';
import 'package:taskora/features/main/store/presentation/widgets/store_list_item.dart';

class StoreListView extends StatefulWidget {
  const StoreListView({required this.categoryKey, super.key});

  final String categoryKey;

  @override
  State<StoreListView> createState() => _StoreListViewState();
}

class _StoreListViewState extends State<StoreListView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final items = StoreItemModel.getDummyStoreItemsByCategory(
      widget.categoryKey,
      context: context,
    );

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Padding(
          padding: EdgeInsets.only(bottom: index == items.length - 1 ? 0 : 0),
          child: StoreListItem(item: items[index]),
        ),
        childCount: items.length,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
