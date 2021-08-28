import 'package:flutter/material.dart';
import 'package:theme_builder/theme_builder.dart';

abstract class SharedStyle {
  static final _sharedTheme = ThemeData().copyWith(
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline2: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
      headline3: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      headline4: TextStyle(fontSize: 8.0, fontWeight: FontWeight.bold),
      headline5: TextStyle(fontSize: 4.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 2.0, fontWeight: FontWeight.bold),
      bodyText1: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
      bodyText2: TextStyle(fontSize: 8.0, fontWeight: FontWeight.normal),
    ),
  );

  static final MaterialColor _customSwatch = MaterialColor(0xffe55f48, {
    50: Color(0xffce5641), //10%
    100: Color(0xffb74c3a), //20%
    200: Color(0xffa04332), //30%
    300: Color(0xff89392b), //40%
    400: Color(0xff733024), //50%
    500: Color(0xff5c261d), //60%
    600: Color(0xff451c16), //70%
    700: Color(0xff2e130e), //80%
    800: Color(0xff170907), //90%
    900: Color(0xff000000), //100%
  });

  static final themes = ThemeBuilderThemes([
    ThemeBuilderDefaultStyle(
      name: 'orange',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.orange,
        textTheme: _sharedTheme.textTheme,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepOrange,
        textTheme: _sharedTheme.textTheme,
      ),
    ),
    ThemeBuilderStyle(
      name: 'yellow',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.yellow,
        textTheme: _sharedTheme.textTheme,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        textTheme: _sharedTheme.textTheme,
      ),
    ),
    ThemeBuilderStyle(
      name: 'red',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.red,
        textTheme: _sharedTheme.textTheme,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: _customSwatch,
        textTheme: _sharedTheme.textTheme,
      ),
    ),
    ThemeBuilderStyle(
      name: 'green',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.lightGreen,
        textTheme: _sharedTheme.textTheme,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
        textTheme: _sharedTheme.textTheme,
      ),
    ),
    ThemeBuilderStyle(
      name: 'purple',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.purple,
        textTheme: _sharedTheme.textTheme,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        textTheme: _sharedTheme.textTheme,
      ),
    ),
  ]);
}
