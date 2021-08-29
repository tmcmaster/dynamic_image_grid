library dynamic_image_grid;

import 'package:dynamic_image_grid/dynamic_item.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class DynamicImageGrid extends StatefulWidget {
  final List<DynamicItem> children;
  final rowCount;
  final columnCount;
  DynamicImageGrid({
    required Key key,
    required this.children,
    this.rowCount = 2,
    this.columnCount = 4,
  }) : super(key: key);

  @override
  _DynamicImageGridState createState() => _DynamicImageGridState();
}

/// TODO: AnimatedSize needs some further work.
class _DynamicImageGridState extends State<DynamicImageGrid> with TickerProviderStateMixin {
  static const MARGIN = 10.0;

  bool _makeVisible = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      /// determine the current aspect ratio/orientation
      final orientation = constraints.maxWidth > constraints.maxHeight ? Orientation.landscape : Orientation.portrait;

      /// Swap row count and column count when portrait mode is detected.
      final rows = orientation == Orientation.landscape && widget.rowCount < widget.columnCount
          ? widget.rowCount
          : widget.columnCount;
      final columns = orientation == Orientation.landscape && widget.rowCount < widget.columnCount
          ? widget.columnCount
          : widget.rowCount;

      /// calculate the gap and row/column sizes based on available size
      final gap = (constraints.maxWidth + constraints.maxHeight) * 0.01;
      final rowSize = (constraints.maxHeight - (rows - 1) * gap - MARGIN * 2) / rows;
      final colSize = (constraints.maxWidth - (columns - 1) * gap - MARGIN * 2) / columns;

      return Container(
        padding: EdgeInsets.all(MARGIN),
        child: VisibilityDetector(
          key: widget.key!,
          onVisibilityChanged: _handleVisibilityChange,
          child: Stack(
            children: widget.children.map((child) {
              final layout = child.layout(orientation);

              /// calculate the widget grid position
              final x = _makeVisible ? layout.end.x : layout.start.x;
              final y = _makeVisible ? layout.end.y : layout.start.y;

              /// calculate the size of the widget in grid squares
              final h = layout.size.height;
              final w = layout.size.width;

              /// calculate pixel location and size of widget
              final left = (x - 1) * colSize + (x - 1) * gap;
              final top = (y - 1) * rowSize + (y - 1) * gap;
              final width = w * colSize + (w - 1) * gap;
              final height = h * rowSize + (h - 1) * gap;

              /// calculate how fast transition attributes of widget
              final moveDuration = layout.duration.inMilliseconds;
              final opacityDuration = moveDuration ~/ 2;
              final sizeDuration = moveDuration;

              return AnimatedPositioned(
                left: left,
                top: top,
                duration: Duration(milliseconds: moveDuration),
                child: AnimatedOpacity(
                  opacity: _makeVisible ? 1 : 0,
                  duration: Duration(milliseconds: opacityDuration),
                  child: AnimatedSize(
                    duration: Duration(milliseconds: sizeDuration),
                    vsync: this,
                    child: SizedBox(
                      width: width,
                      height: height,
                      child: child.child,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      );
    });
  }

  void _handleVisibilityChange(visibilityInfo) {
    var visiblePercentage = visibilityInfo.visibleFraction * 100;
    if (_makeVisible && visiblePercentage <= 70) {
      setState(() {
        _makeVisible = false;
      });
    } else if (!_makeVisible && visiblePercentage > 70) {
      setState(() {
        _makeVisible = true;
      });
    }
  }
}
