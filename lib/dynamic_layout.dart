import 'dart:math';

import 'package:flutter/material.dart';

class DynamicLayout {
  final Point start;
  final Point end;
  final Size size;
  final Duration duration;

  DynamicLayout({
    required this.start,
    required this.end,
    required this.size,
    required this.duration,
  });
}
