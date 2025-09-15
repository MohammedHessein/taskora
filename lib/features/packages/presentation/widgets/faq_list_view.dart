import 'package:flutter/material.dart';
import 'package:taskora/features/packages/data/models/faq_model.dart';
import 'package:taskora/features/packages/presentation/widgets/faq_item.dart';

class FaqListView extends StatelessWidget {
  const FaqListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return FaqItem(faq: dummyFaqs[index]);
        },
        childCount: dummyFaqs.length,
      ),
    );
  }
}
