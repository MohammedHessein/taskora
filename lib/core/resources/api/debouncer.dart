import 'dart:async';

import 'package:flutter/material.dart';

class Debouncer {
  /// Creates a new Debouncer with the specified interval.
  Debouncer(this.interval);

  /// The duration to wait before executing the action.
  final Duration interval;

  /// The action to be executed.
  VoidCallback? _action;

  /// The timer used to delay the execution of the action.
  Timer? _timer;

  /// Overrides any pending action with the new one and restarts the timer.
  ///
  /// The latest action will be executed after the specified interval.
  void call(VoidCallback action) {
    _action = action;
    _timer?.cancel();
    _timer = Timer(interval, _callAction);
  }

  /// Executes the queued action (if any) and resets the action and timer.
  void _callAction() {
    _action?.call();
    _action = null;
    _timer = null;
  }

  /// Cancels any pending action and timer, resetting the debouncer to its initial state.
  void reset() {
    _action = null;
    _timer = null;
  }
}
