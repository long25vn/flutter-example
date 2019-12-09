import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app_demo_bloc/module/search/search_bloc.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  final searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    var bloc = Provider.of<SearchBloc>(context);
    searchController.addListener(() {
      bloc.search(searchController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchBloc>(
      builder: (context, bloc, child) => Container(
        child: TextFormField(
          controller: searchController,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.search),
            hintText: 'Search...',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        ),
      ),
    );
  }
}
