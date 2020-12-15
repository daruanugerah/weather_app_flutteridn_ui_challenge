import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wheaterapp_ui_challenge/appstatenotifier.dart';
import 'package:wheaterapp_ui_challenge/apptheme.dart';
import 'package:wheaterapp_ui_challenge/blank_page.dart';
import 'package:wheaterapp_ui_challenge/home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider<AppStateNotifier>(
      builder: (context) => AppStateNotifier(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateNotifier>(
      builder: (context, appState, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme, // ThemeData(primarySwatch: Colors.blue),
          darkTheme: AppTheme.darkTheme,
          home: BlankPage(),
          themeMode: appState.isDarkMode ? ThemeMode.dark : ThemeMode.light,
        );
      },
    );
  }
}
