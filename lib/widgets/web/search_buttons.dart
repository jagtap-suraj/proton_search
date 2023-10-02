import 'package:flutter/material.dart';
import 'package:proton_search/widgets/web/search_button.dart';

class SearchButtons extends StatelessWidget {
  const SearchButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SearchButton(
              title: 'Quick Search',
            ),
            SizedBox(width: 20),
            SearchButton(
              title: 'Secure Search',
            ),
          ],
        )
      ],
    );
  }
}
