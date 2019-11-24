import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Gesture'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(this.title),
        ),
        body: Center(
          child: new Column(children: <Widget>[
            GestureDetector(
              onTap: () => print("tapped!"),
              child: Text("Tap Me", style: TextStyle(fontSize: 40),),
            ),
            GestureDetector(
              onDoubleTap: () => print("onDoubleTap!"),
              child: Text("onDoubleTap", style: TextStyle(fontSize: 40),),
            ),
            GestureDetector(
              onLongPress: () => print("onLongPress!"),
              child: Text("onLongPress", style: TextStyle(fontSize: 40),),
            )
          ]),
        ));
  }
}
