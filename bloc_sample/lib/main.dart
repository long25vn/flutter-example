import 'package:flutter/material.dart';
import 'package:bloc_sample/home.dart';
import 'package:bloc_sample/about.dart';
import 'package:bloc_sample/settings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_sample/bloc/settings/settings_bloc.dart';

void main() {
  final BlocProvider<SettingsBloc> blocProvider = BlocProvider<SettingsBloc>(
    builder: (_) => SettingsBloc(),
    child: MyApp(),
  );

  runApp(blocProvider);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/about': (context) => About(),
        '/settings': (context) => Settings(),
      },
    );
  }
}
