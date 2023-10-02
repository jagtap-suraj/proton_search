import 'package:flutter/material.dart';
import 'package:proton_search/colors.dart';

class MyPopupMenu extends StatelessWidget {
  final List<Map<IconData, String>> iconDataList;
  final Function(IconData) onItemSelected;

  const MyPopupMenu({
    Key? key,
    required this.iconDataList,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<IconData>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      itemBuilder: (context) {
        return iconDataList.map((item) {
          final IconData iconData = item.keys.first;
          final String text = item.values.first;
          return PopupMenuItem<IconData>(
            value: iconData,
            child: Row(
              children: [
                Icon(iconData, color: purpleColor),
                SizedBox(width: 8), // Add some spacing between icon and text
                Text(text),
              ],
            ),
          );
        }).toList();
      },
      onSelected: (iconData) {
        onItemSelected(iconData);
      },
    );
  }
}
