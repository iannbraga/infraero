import 'package:flutter/material.dart';
import 'package:infraero/theme/app_theme.dart';
import 'package:infraero/pages/search_bar_page.dart';

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  final AppTheme _appTheme = AppTheme();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _appTheme.theme(),
      title: 'INFRAERO',
      home: SearchBarPage(),
    );
  }
}
