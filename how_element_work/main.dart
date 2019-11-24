import 'package:my_app/fancy_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Hot Reload Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<Widget> _buttons;

  @override
  initState() {
    super.initState();
    _buttons = <Widget>[
      FancyButton(              // updated
        child: Text(
          "Decrement",
          style: TextStyle(color: Colors.white),
        ),
        onPressed: _decrementCounter,
      ),
      FancyButton(              // updated
        child: Text(
          "Increment",
          style: TextStyle(color: Colors.white),
        ),
        onPressed: _incrementCounter,
      ),
    ];
}

  void _incrementCounter() {
    setState(() => _counter++);
  }

  void _decrementCounter() {
    setState(() => _counter--);
  }
  
  void _resetCounter() {
    setState(() => _counter = 0);
    _swap();
  }

  void _swap() {
    setState(() => _buttons.insert(0, _buttons.removeAt(_buttons.length - 1)));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              _counter.toString(),
              style: Theme.of(context).textTheme.display1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _buttons,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _resetCounter,
        tooltip: 'Reset',
        child: new Icon(Icons.refresh),
      ),
    );
  }
}
