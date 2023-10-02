import 'package:flutter/material.dart';
import 'package:proton_search/colors.dart';

class SearchFooter extends StatelessWidget {
  const SearchFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          color: footerColor,
          padding: EdgeInsets.symmetric(
            horizontal: size.width <= 768 ? 10 : 180,
            vertical: 40,
          ),
          child: Row(
            children: [
              const Text('India', style: TextStyle(fontSize: 15, color: Colors.grey)),
              const SizedBox(width: 10),
              Container(
                height: 20,
                width: 0.5,
                color: Colors.grey,
              ),
              const SizedBox(width: 10),
              const Icon(Icons.circle, color: Colors.grey, size: 12),
              const SizedBox(width: 10),
              const Text(
                '400001, Mumbai, Maharashtra',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              )
            ],
          ),
        ),
        const Divider(thickness: 0, height: 0, color: Colors.black26),
        Container(
          color: footerColor,
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            children: [
              Text(
                'Help',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),
              const SizedBox(width: 20),
              Text(
                'Send Feedback',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),
              const SizedBox(width: 20),
              Text(
                'Privacy',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),
              const SizedBox(width: 20),
              Text(
                'Terms',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
