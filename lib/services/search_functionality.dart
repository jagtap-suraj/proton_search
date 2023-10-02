// search_functionality.dart

import 'package:flutter/material.dart';
import 'package:proton_search/colors.dart';

class SearchFunctionality extends StatelessWidget {
  final Function(String) onSearch;

  const SearchFunctionality({Key? key, required this.onSearch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: (query) {
        onSearch(query);
      },
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: searchBorder),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        prefixIcon: Icon(
          Icons.search,
          color: purpleColor,
        ),
        suffixIcon: Icon(
          Icons.mic,
          color: purpleColor,
        ),
      ),
    );
  }
}
