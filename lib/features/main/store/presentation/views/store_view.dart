import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(context.tr.store)));
  }
}
