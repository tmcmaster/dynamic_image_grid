#!/bin/bash

if [ ! -f pubspec.yaml ];
then
  echo "Run from the main Flutter Package directory.";
  exit 1;
fi

TEMPLATE_NAME="flutter_package_template";
PACKAGE_NAME=$(basename $(pwd));

if [ -x "${PACKAGE_NAME}" ];
then
  echo "Could not determine the PACKAGE_NAME";
  echo 2;
fi

echo "Setting up new Flutter Package: ${PACKAGE_NAME}";

mv "lib/${TEMPLATE_NAME}.dart" "lib/${PACKAGE_NAME}.dart";
mv "test/${TEMPLATE_NAME}_test.dart" "test/${PACKAGE_NAME}_test.dart";

grep -rl "${TEMPLATE_NAME}" * .github |xargs perl -spi -e "s/${TEMPLATE_NAME}/${PACKAGE_NAME}/g";

flutter pub get;