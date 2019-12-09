/**
 * Created by Mahmud Ahsan
 * https://github.com/mahmudahsan
 */
import 'package:flutter/material.dart';
import 'package:provider_example/drawer_menu.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/model/ui.dart';

class Home extends StatelessWidget {
  String text = lorem(paragraphs: 3, words: 50);

  @override
  Widget build(BuildContext context) {
    final notifier = Provider.of<UI>(
      context,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("State Management by Provider"),
      ),
      drawer: DrawerMenu(),
      body: Container(
        margin: EdgeInsets.all(10),
        child: 
            RichText(
              text: TextSpan(
                text: text,
                style: TextStyle(fontSize: notifier.fontSize, color: Colors.black),
              ),
            )
          
        
      ),
    );
  }
}
