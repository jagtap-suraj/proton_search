import 'package:flutter/material.dart';
import 'package:proton_search/colors.dart';
import 'package:proton_search/widgets/footer_text.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      child: const Padding(
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FooterText(title: 'About', link: 'https://proton.me/about'),
                SizedBox(width: 10),
                FooterText(title: 'Blog', link: 'https://proton.me/blog'),
                SizedBox(width: 10),
                FooterText(title: 'News', link: 'https://proton.me/blog/news'),
                SizedBox(width: 10),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FooterText(title: 'Community', link: 'https://proton.me/community'),
                SizedBox(width: 10),
                FooterText(title: 'Business', link: 'https://proton.me/business'),
                SizedBox(width: 10),
                FooterText(title: 'Support', link: 'https://proton.me/support'),
                SizedBox(width: 10),
              ],
            )
          ],
        ),
      ),
    );
  }
}
