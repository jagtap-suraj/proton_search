import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

/*
https://www.facebook.com/Proton
https://twitter.com/ProtonPrivacy
https://www.instagram.com/protonprivacy
https://www.linkedin.com/company/protonprivacy
https://www.reddit.com/r/ProtonMail
https://www.youtube.com/@ProtonAG
 */

class SocialHandles extends StatelessWidget {
  const SocialHandles({super.key});

  // Open the URL in a web browser
  _launchURL(String url) async {
    final uri = Uri.parse(url);
    launchUrl(
      uri,
      mode: LaunchMode.inAppWebView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center, // Center the content horizontally
      crossAxisAlignment: WrapCrossAlignment.center, // Center the content vertically
      children: [
        const SizedBox(width: 16), // Add spacing between text and icons
        Wrap(
          spacing: 16, // Add spacing between icons
          children: [
            IconButton(
              onPressed: () {
                //_launchURL('https://www.facebook.com/Proton');
                _launchURL('https://www.facebook.com');
              },
              icon: SvgPicture.asset(
                'assets/socialicons/logo-facebook.svg',
              ),
            ),
            IconButton(
              onPressed: () {
                //_launchURL('https://twitter.com/ProtonPrivacy');
                _launchURL('https://twitter.com');
              },
              icon: SvgPicture.asset(
                'assets/socialicons/logo-twitter.svg',
                height: 24,
                width: 24,
              ),
            ),
            IconButton(
              onPressed: () {
                //_launchURL('https://www.instagram.com/protonprivacy');
                _launchURL('https://www.instagram.com');
              },
              icon: SvgPicture.asset(
                'assets/socialicons/logo-instagram.svg',
                height: 24,
                width: 24,
              ),
            ),
            IconButton(
              onPressed: () {
                //_launchURL('https://www.linkedin.com/company/protonprivacy');
                _launchURL('https://www.linkedin.com');
              },
              icon: SvgPicture.asset(
                'assets/socialicons/logo-linkedin.svg',
                height: 24,
                width: 24,
              ),
            ),
            IconButton(
              onPressed: () {
                //_launchURL('https://www.reddit.com/r/ProtonMail');
                _launchURL('https://www.reddit.com');
              },
              icon: SvgPicture.asset(
                'assets/socialicons/logo-reddit.svg',
                height: 24,
                width: 24,
              ),
            ),
            IconButton(
              onPressed: () {
                //_launchURL('https://www.youtube.com/@ProtonAG');
                _launchURL('https://www.youtube.com');
              },
              icon: SvgPicture.asset(
                'assets/socialicons/logo-youtube.svg',
                height: 24,
                width: 24,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
