import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';

class RequestsView extends StatelessWidget {
  const RequestsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(context.tr.requests)));
  }
}
