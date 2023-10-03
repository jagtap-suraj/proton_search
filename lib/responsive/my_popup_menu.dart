import 'package:flutter/material.dart';
import 'package:proton_search/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class MyPopupMenu extends StatelessWidget {
  final List<Map<String, dynamic>> itemList;

  const MyPopupMenu({
    super.key,
    required this.itemList,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      itemBuilder: (context) {
        return itemList.asMap().entries.map((entry) {
          final int index = entry.key;
          final IconData iconData = entry.value['iconData'];
          final String text = entry.value['text'];
          final String url = entry.value['url']; // Get the URL from the item list

          return PopupMenuItem<int>(
            value: index,
            child: GestureDetector(
              onTap: () {
                _launchURL(url); // Launch the URL when the item is tapped
              },
              child: Row(
                children: [
                  Icon(iconData, color: purpleColor),
                  const SizedBox(width: 8),
                  Text(
                    text,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          );
        }).toList();
      },
    );
  }

  // Function to launch the URL

  _launchURL(String url) async {
    final uri = Uri.parse(url);
    launchUrl(
      uri,
      mode: LaunchMode.inAppWebView,
    );
  }
}
