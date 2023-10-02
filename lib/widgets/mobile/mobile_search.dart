import 'package:flutter/material.dart';
import 'package:proton_search/colors.dart';
import 'package:proton_search/screens/search_screen.dart';

class MobileSearch extends StatelessWidget {
  const MobileSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center, // or MainAxisAlignment.spaceAround
            children: [
              Container(
                margin: const EdgeInsets.only(right: 5),
                child: Image.asset(
                  'assets/images/ProtonSearch-icon.png',
                  height: size.height * 0.1,
                  width: size.width * 0.1,
                ),
              ),
              Image.asset(
                'assets/images/ProtonSearch-logo.png',
                height: size.height * 0.08,
                width: size.width * 0.4,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: size.width * 0.8,
          height: size.height * 0.06,
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
