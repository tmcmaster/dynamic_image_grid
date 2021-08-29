# dynamic_image_grid
Layout widgets in a dynamic and responsive way. 

# Notes

This widget is an example of building up functionality with composition, 
where each widget in the grid is wrapped with number of components, that
each add behavior to the widget.

- SizedBox: applies a size to the widget
- AnimatedSize: animates any change to the new size of the widget.
- AnimatedOpacity: animate changes to the widget opacity.
- AnimatedPositioned: animates any change to the widget location.

The whole collection of widgets are then wrapped, to a add behavior to the collection.

- Stack: wrap all of the widgets, to give them somewhere to be laid out.
- VisibilityDetector: determines when the Stack enters the screen.
- LayoutBuilder: informs when the available space for the Stack changes.

The widgets are supplied to the DynamicImageGrid, wrapped within a DynamicItem.
The DynamicItem defines layout/size/duration information for the widget, supporting different orientations with DynamicLayout components. 

The DynamicLayout component defines information used by the DynamiImageGrid, to animate the laying out of widgets.

- start: the grid location that the widget should start when, the Stack enters the screen
- end: the grid location that the widget should animate to.
- size: the grid unit size the widget should be.
- duration: the duration that it should take for the widget to get to it's final destination.

# Install

Add the following to pubspec.yaml dependencies:

```yaml
flutter_workbench:
    git:
      url: https://github.com/tmcmaster/dynamic_image_grid.git
```

# Example

An example of using this widget can be found in: 

(https://github.com/tmcmaster/dynamic_image_grid/blob/main/site/main.dart)

This example is code is deployed into GitHub Pages, when code is pushed to GitHub.
The example code creates multiple duplicate version of the Widget displays them with a widget tester,
which enables the DynamicImageGrid to be resized. Also having a scrollable list 
of multiple versions of the widget, enables the test of when widget enters and exits the screen.

(https://tmcmaster.github.io/dynamic_image_grid)

# CI/CD

When code is pushed into the master branch, GitHub Actions deploys the example code to GitHub Pages.

(https://github.com/tmcmaster/dynamic_image_grid/blob/main/.github/workflows/gh-pages.yml)
