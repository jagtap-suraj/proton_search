import 'package:flutter/material.dart';
import 'package:proton_search/colors.dart';

class SearchButton extends StatelessWidget {
  final String title;

  // add final function onTap
  // final Function onTap;
  // const SearchButton({super.key, required this.text, required this.onTap});
  const SearchButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 12,
      ),
      onPressed: () {},
      color: purpleDarkColor,
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
