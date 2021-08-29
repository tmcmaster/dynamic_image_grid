import 'dart:math';

import 'package:dynamic_image_grid/dynamic_image_grid.dart';
import 'package:dynamic_image_grid/dynamic_item.dart';
import 'package:dynamic_image_grid/dynamic_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workbench/flutter_workbench.dart';

import 'shared_style.dart';

void main() => FlutterWorkbench.runAppWidgetTester(
      title: 'Responsive Card',
      styles: SharedStyle.themes,
      options: WidgetTesterOptions(
        aspectRatio: 5 / 3,
        columns: 1,
      ),
      children: Iterable.generate(5).map((i) => widgetBuilder(i)).toList(),
    );

Widget widgetBuilder(id) {
  const FAST = Duration(milliseconds: 500);
  const MEDIUM = Duration(milliseconds: 1000);
  const SLOW = Duration(milliseconds: 1500);
  return DynamicImageGrid(
    key: ValueKey(id),
    rowCount: 2,
    columnCount: 4,
    children: [
      DynamicItem(
        // strawberries
        layout: DynamicLayout(
          start: Point(3, 3),
          end: Point(3, 1),
          size: Size(1, 2),
          duration: MEDIUM,
        ),
        portrait: DynamicLayout(
          start: Point(1, -2),
          end: Point(1, 2),
          size: Size(1, 2),
          duration: MEDIUM,
        ),
        child: Image.network(
          'https://images.unsplash.com/photo-1574856344991-aaa31b6f4ce3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=975&q=80',
          fit: BoxFit.cover,
        ),
      ),
      DynamicItem(
        // oranges
        layout: DynamicLayout(
          start: Point(3, 1),
          end: Point(4, 1),
          size: Size(1, 1),
          duration: FAST,
        ),
        portrait: DynamicLayout(
          start: Point(3, 2),
          end: Point(2, 2),
          size: Size(1, 1),
          duration: FAST,
        ),
        child: Image.network(
          'https://images.unsplash.com/photo-1582979512210-99b6a53386f9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGZydWl0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
          fit: BoxFit.cover,
        ),
      ),
      DynamicItem(
        // rock mellon
        layout: DynamicLayout(
          start: Point(5, 2),
          end: Point(4, 2),
          size: Size(1, 1),
          duration: MEDIUM,
        ),
        portrait: DynamicLayout(
          start: Point(1, 3),
          end: Point(2, 3),
          size: Size(1, 1),
          duration: MEDIUM,
        ),
        child: Image.network(
          'https://images.unsplash.com/photo-1571575173700-afb9492e6a50?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGZydWl0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
          fit: BoxFit.cover,
        ),
      ),
      DynamicItem(
        // blueberries
        layout: DynamicLayout(
          start: Point(1, -1),
          end: Point(1, 1),
          size: Size(2, 1),
          duration: SLOW,
        ),
        portrait: DynamicLayout(
          start: Point(3, 1),
          end: Point(1, 1),
          size: Size(2, 1),
          duration: SLOW,
        ),
        child: Image.network(
          'https://images.unsplash.com/photo-1457296898342-cdd24585d095?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGZydWl0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
          fit: BoxFit.cover,
        ),
      ),
      DynamicItem(
        // raspberries
        layout: DynamicLayout(
          start: Point(1, 3),
          end: Point(1, 2),
          size: Size(1, 1),
          duration: MEDIUM,
        ),
        portrait: DynamicLayout(
          start: Point(-1, 4),
          end: Point(1, 4),
          size: Size(1, 1),
          duration: MEDIUM,
        ),
        child: Image.network(
          'https://images.unsplash.com/photo-1577069861033-55d04cec4ef5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTJ8fGZydWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
          fit: BoxFit.cover,
        ),
      ),
      DynamicItem(
        // bananas
        layout: DynamicLayout(
          start: Point(2, 4),
          end: Point(2, 2),
          size: Size(1, 1),
          duration: SLOW,
        ),
        portrait: DynamicLayout(
          start: Point(2, 6),
          end: Point(2, 4),
          size: Size(1, 1),
          duration: SLOW,
        ),
        child: Image.network(
          'https://images.unsplash.com/photo-1543218024-57a70143c369?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YmFuYW5hc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
          fit: BoxFit.cover,
        ),
      ),
    ],
  );
}
