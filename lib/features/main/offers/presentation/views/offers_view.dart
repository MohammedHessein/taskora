import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(context.tr.offers)));
  }
}
