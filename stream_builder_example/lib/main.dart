import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    title: 'Stream Demo',
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream Demo'),
      ),
      body: Center(
        child: StreamBuilder(
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Text(
                '30 Minute Completed',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return Text(
                'Waiting For Stream',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              );
            }
            return Text(
              '00:${snapshot.data.toString().padLeft(2,'0')}',
              style: TextStyle(
                fontSize: 30.0,
              ),
            );
          },
          initialData: 0,
          stream: _stream(),
        ),
      ),
    );
  }

  Stream<int> _stream() {
    Duration interval = Duration(seconds: 1);
    Stream<int> stream = Stream<int>.periodic(interval, transform);
    stream = stream.take(10);
    return stream;
  }

  int transform(int value) {
    return value;
  }
}