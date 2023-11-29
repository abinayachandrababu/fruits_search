import 'package:flutter/material.dart';
import 'package:flutter_fruits_search/custom_search_delegate.dart';

class SearchFruits extends StatefulWidget {
  const SearchFruits({super.key});

  @override
  State<SearchFruits> createState() => _SearchFruitsState();
}

class _SearchFruitsState extends State<SearchFruits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Option'),
        actions: [
          IconButton(
              onPressed: () {
                print('Icon button clicked');
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              },
              icon: Icon(Icons.search))
        ],
      ),
    );
  }
}
