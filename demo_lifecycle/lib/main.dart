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
          RaisedButton(
              child: Text("Lifecycle"),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return LifeCycleDemo();
                }));
              }),
        ],
      ),
    ));
  }
}

class LifeCycleDemo extends StatefulWidget {
  LifeCycleDemo() {
    print("Widget constructor");
  }

  @override
  _LifeCycleDemoState createState() => _LifeCycleDemoState();
}

class _LifeCycleDemoState extends State<LifeCycleDemo> {
  int counter = 0;

  _LifeCycleDemoState() {
    print("Widget state constructor");
  }

  @override
  void initState() {
    print("From initState");
    super.initState();
  }

  @override
  void didUpdateWidget(LifeCycleDemo oldWidget) {
    print("From state didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("From state build");
    print(mounted);
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget Lifecycle Demo"),
      ),
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Counter: $counter",
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: Text("increase"),
            ),
             RaisedButton(
              onPressed: () {
                dispose();
              },
              child: Text("dispose"),
            )
          ],
        )),
      ),
    );
  }

  @override
  void deactivate() {
    print("From state deactivate");
    super.deactivate();
  }
  
  @override
  void dispose() {
    print("From state dispose");
    super.dispose();
  }
}
