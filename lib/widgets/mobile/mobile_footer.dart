import 'package:flutter/material.dart';
import 'package:proton_search/widgets/footer_text.dart';

/*
https://proton.me/blog
https://proton.me/blog/news
https://proton.me/community
https://proton.me/business
 */

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // FooterText(title: 'About'),
        // SizedBox(width: 10),
        FooterText(title: 'Blog', link: 'https://proton.me/blog'),
        //SizedBox(width: 10),
        FooterText(title: 'News', link: 'https://proton.me/blog/news'),
        //SizedBox(width: 10),
        FooterText(title: 'Community', link: 'https://proton.me/community'),
        //SizedBox(width: 10),
        FooterText(title: 'Business', link: 'https://proton.me/business'),

        //FooterText(title: 'Support'),
      ],
    );
  }
}
