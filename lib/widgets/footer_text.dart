import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterText extends StatelessWidget {
  final String title;
  final String link;

  const FooterText({super.key, required this.title, required this.link});
  _launchURL(String url) async {
    final uri = Uri.parse(url);
    launchUrl(
      uri,
      mode: LaunchMode.inAppWebView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          _launchURL(link);
        },
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ));
  }
}
