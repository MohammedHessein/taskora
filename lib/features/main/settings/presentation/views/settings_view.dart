import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(context.tr.settings)));
  }
}
