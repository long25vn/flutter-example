import 'package:flutter/material.dart';
import 'package:flutter_app_demo_bloc/module/search/search_bloc.dart';
import 'package:flutter_app_demo_bloc/module/search/search_box.dart';
import 'package:flutter_app_demo_bloc/module/search/search_result.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          SearchBox(),
          Expanded(
            child: Result(),
          )
        ],
      ),
    );
  }
}
