import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Future Builder',
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: FutureBuilder(
          future: getFutureData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: Text(
                  snapshot.data,
                ),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }

  Future<String> getFutureData() async =>
      await Future.delayed(Duration(seconds: 5), () {
        return 'Data';
      });
}
