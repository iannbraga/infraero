import 'package:flutter/material.dart';

class AppTheme {
  Color primary = Colors.yellow;

  ThemeData theme() {
    return ThemeData(
      primarySwatch: Colors.indigo,
      primaryColor: primary,
      //accentColor: Colors.amberAccent,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
      ),
    );
  }

  BoxDecoration containerPizza() {
    return BoxDecoration(
      color: primary,
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(32.00),
        bottomRight: Radius.circular(32.00),
      ),
    );
  }
}
