import 'dart:math';

import 'package:flutter/material.dart';

class DynamicItem {
  final Point start;
  final Point end;
  final Size size;
  final Duration duration;
  final Widget child;

  DynamicItem({
    required this.start,
    required this.end,
    required this.size,
    required this.duration,
    required this.child,
  });
}
