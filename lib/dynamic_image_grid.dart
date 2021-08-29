library dynamic_image_grid;

import 'package:dynamic_image_grid/dynamic_item.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class DynamicImageGrid extends StatefulWidget {
  final List<DynamicItem> children;
  final rows;
  final columns;
  DynamicImageGrid({
    required Key key,
    required this.children,
    this.rows = 2,
    this.columns = 4,
  }) : super(key: key);

  @override
  _DynamicImageGridState createState() => _DynamicImageGridState();
}

/// TODO: AnimatedSize needs some further work.
class _DynamicImageGridState extends State<DynamicImageGrid> with TickerProviderStateMixin {
  bool _makeVisible = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final gap = (constraints.maxWidth + constraints.maxHeight) * 0.01;
      final rowSize = (constraints.maxHeight - (widget.rows - 1) * gap) / widget.rows;
      final colSize = (constraints.maxWidth - (widget.columns - 1) * gap) / widget.columns;

      return Container(
        padding: EdgeInsets.all(10),
        child: VisibilityDetector(
          key: widget.key!,
          onVisibilityChanged: _handleVisibilityChange,
          child: Stack(
            children: widget.children.map((child) {
              final x = _makeVisible ? child.end.x : child.start.x;
              final y = _makeVisible ? child.end.y : child.start.y;
              final h = child.size.height;
              final w = child.size.width;

              final left = (x - 1) * colSize + (x - 1) * gap;
              final top = (y - 1) * rowSize + (y - 1) * gap;
              final width = w * colSize + (w - 1) * gap;
              final height = h * rowSize + (h - 1) * gap;

              final moveDuration = child.duration.inMilliseconds;
              final opacityDuration = child.duration.inMilliseconds ~/ 2;

              return AnimatedPositioned(
                left: left,
                top: top,
                duration: Duration(milliseconds: moveDuration),
                child: AnimatedOpacity(
                  opacity: _makeVisible ? 1 : 0,
                  duration: Duration(milliseconds: opacityDuration),
                  child: AnimatedSize(
                    duration: Duration(seconds: 3),
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
