library flutter_package_template;

import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final title;
  final description;
  const MyWidget({
    Key? key,
    this.title,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 500,
      height: 500,
      padding: EdgeInsets.all(15),
      color: theme.colorScheme.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: theme.textTheme.headline2!.copyWith(
              color: theme.colorScheme.onPrimary,
            ),
          ),
          Text(
            description,
            style: theme.textTheme.bodyText1!.copyWith(
              color: theme.colorScheme.onPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
