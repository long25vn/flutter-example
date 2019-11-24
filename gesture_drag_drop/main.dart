import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gestures & Drag and Drop',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: Home(),
    );
  }
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _gestureDetected = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestures & Drag and Drop'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: _buildGestureDetector(),
        ),
      ),
    );
  }

  GestureDetector _buildGestureDetector() {
    return GestureDetector(
      onTap: () {
        print('onTap');
        _displayGestureDetected('onTap');
      },
      onDoubleTap: () {
        print('onDoubleTap');
        _displayGestureDetected('onDoubleTap');
      },
      onLongPress: () {
        print('onLongPress');
        _displayGestureDetected('onLongPress');
      },
      onPanUpdate: (DragUpdateDetails details) {
        print('onPanUpdate: $details');
        _displayGestureDetected('onPanUpdate:\n$details');
      },
      // onVerticalDragUpdate: ((DragUpdateDetails details) {
      //  print('onVerticalDragUpdate: $details');
      //  _displayGestureDetected('onVerticalDragUpdate:\n$details');
      // }),
      // onHorizontalDragUpdate: ((DragUpdateDetails details) {
      //  print('onHorizontalDragUpdate: $details');
      //  _displayGestureDetected('onHorizontalDragUpdate:\n$details');
      // }),
      // onHorizontalDragEnd: (DragEndDetails details) {
      //  print('onHorizontalDragEnd: $details');
      //  if (details.primaryVelocity < 0) {
      //    print('Dragged Right to Left: ${details.primaryVelocity}');
      //  } else if (details.primaryVelocity > 0) {
      //    print('Dragged Left to Right: ${details.primaryVelocity}');
      //  }
      // },
      child: Container(
        color: Colors.lightGreen.shade100,
        width: double.infinity,
        height: 300,
        child: Text('$_gestureDetected'),
      ),
    );
  }

  void _displayGestureDetected(String gesture) {
    setState(() {
      _gestureDetected = gesture;
    });
  }
}