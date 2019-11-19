import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MainApp(),
    ));

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.ac_unit),
          WithBuildContext(),
        ],
      ),
    ));
  }
}

class WithBuildContext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Column column = context.ancestorWidgetOfExactType(Column);
    return Text(column.children.length.toString(),
        textAlign: TextAlign.center, style: TextStyle(fontSize: 28.0));
  }
}
