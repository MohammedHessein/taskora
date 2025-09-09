import 'package:flutter/material.dart';
import 'package:taskora/features/main/requests/data/models/request_model.dart'
    as RequestsModel;
import 'package:taskora/features/main/requests/presentation/widgets/request_item.dart';

class RequestsList extends StatelessWidget {
  const RequestsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return RequestItem(request: RequestsModel.requests[index]);
        },
        childCount: RequestsModel.requests.length,
      ),
    );
  }
}
