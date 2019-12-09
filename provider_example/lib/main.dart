import 'package:flutter/material.dart';
import 'package:provider_example/home.dart';
import 'package:provider_example/about.dart';
import 'package:provider_example/settings.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/model/ui.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UI(),
        ),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/about': (context) => About(),
          '/settings': (context) => Settings(),
        },
      ),
    );
  }
}