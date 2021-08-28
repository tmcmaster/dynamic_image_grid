import 'package:faker/faker.dart';
import 'package:flutter_package_template/flutter_package_template.dart';
import 'package:flutter_workbench/flutter_workbench.dart';

import 'shared_style.dart';

void main() => FlutterWorkbench.runAppWidgetTester(
      title: 'Responsive Card',
      styles: SharedStyle.themes,
      options: WidgetTesterOptions(
        aspectRatio: 5 / 3,
        columns: 2,
      ),
      children: Iterable.generate(5)
          .map((e) => MyWidget(
                title: randomTitle(),
                description: randomDescription(),
              ))
          .toList(),
    );

final randomInt = (min, max) => faker.randomGenerator.integer(max, min: min);
final randomTitle = () => faker.lorem.words(randomInt(2, 5)).join(' ');
final randomDescription = () => faker.lorem.words(randomInt(15, 25)).join(' ');
