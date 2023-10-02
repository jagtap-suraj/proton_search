import 'package:flutter/material.dart';
import 'package:proton_search/colors.dart';
import 'package:proton_search/screens/search_screen.dart';

class WebSearch extends StatelessWidget {
  const WebSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 40),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center, // or MainAxisAlignment.spaceAround
            children: [
              Image.asset(
                'assets/images/ProtonSearch-icon.png',
                height: size.height * 0.13,
                width: size.width * 0.13,
              ),
              Image.asset(
                'assets/images/ProtonSearch-logo.png',
                height: size.height * 0.12,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        SizedBox(
          width: size.width * 0.6,
          child: TextFormField(
            onFieldSubmitted: (query) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchScreen(
                    searchQuery: query,
                    start: '0',
                  ),
                ),
              );
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
          ),
        )
      ],
    );
  }
}
