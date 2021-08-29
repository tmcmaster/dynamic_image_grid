import 'package:dynamic_image_grid/dynamic_layout.dart';
import 'package:flutter/material.dart';

class DynamicItem {
  late final DynamicLayout _portrait;
  late final DynamicLayout _landscape;
  final Widget child;

  DynamicItem({
    required DynamicLayout layout,
    DynamicLayout? portrait,
    DynamicLayout? landscape,
    required this.child,
  }) {
    _portrait = portrait ?? layout;
    _landscape = landscape ?? layout;
  }

  DynamicLayout layout(Orientation orientation) {
    return orientation == Orientation.landscape ? _landscape : _portrait;
  }
}
