library dynamic_image_grid;

import 'package:dynamic_image_grid/dynamic_item.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

/// TODO: need to introduce grid units, and grid units in x and y.
/// WIP:
/// final rowHeight = 0.48;
/// final rowGap = 0.04;
///
/// final row1 = 0;
/// final row2 = 0.52;
/// final colGap = 0.04;
///
class DynamicImageGrid extends StatefulWidget {
  final List<DynamicItem> children;
  DynamicImageGrid({
    required Key key,
    required this.children,
  }) : super(key: key);

  @override
  _DynamicImageGridState createState() => _DynamicImageGridState();
}

class _DynamicImageGridState extends State<DynamicImageGrid> {
  bool _makeVisible = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        padding: EdgeInsets.all(10),
        child: VisibilityDetector(
          key: widget.key!,
          onVisibilityChanged: _handleVisibilityChange,
          child: Stack(
            children: widget.children.map((child) {
              final left = (_makeVisible ? child.end.x : child.start.x) * constraints.maxWidth;
              final right = (_makeVisible ? child.end.y.toDouble() : child.start.y) * constraints.maxHeight;
              final width = child.size.width * constraints.maxWidth;
              final height = child.size.height * constraints.maxHeight;
              final moveDuration = child.duration.inMilliseconds;
              final opacityDuration = child.duration.inMilliseconds ~/ 2;
              return AnimatedPositioned(
                left: left,
                top: right,
                duration: Duration(milliseconds: moveDuration),
                child: AnimatedOpacity(
                  opacity: _makeVisible ? 1 : 0,
                  duration: Duration(milliseconds: opacityDuration),
                  child: SizedBox(
                    width: width,
                    height: height,
                    child: child.child,
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

    //print('Widget ${visibilityInfo.key} is ${visiblePercentage}% visible. Make visible: $_makeVisible');
  }
}
