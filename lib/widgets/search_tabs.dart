import 'package:flutter/material.dart';
import 'package:proton_search/Custom_Icons_Icons.dart';
import 'package:proton_search/responsive/my_popup_menu.dart';
import 'package:proton_search/widgets/search_tab.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SearchTab(
            icon: Icons.search,
            text: 'All',
            isActive: true,
          ),
          const SizedBox(width: 20),
          const SearchTab(
            icon: Icons.image_outlined,
            text: 'Images',
          ),
          const SizedBox(width: 20),
          const SearchTab(
            icon: Icons.video_collection_outlined,
            text: 'Videos',
          ),
          const SizedBox(width: 20),
          const SearchTab(
            icon: Icons.article_outlined,
            text: 'News',
          ),
          const SizedBox(width: 20),
          const SearchTab(
            icon: Icons.shopping_bag_outlined,
            text: 'Shopping',
          ),
          SizedBox(
            width: size.width <= 768 ? 5 : 10,
          ),
          const MyPopupMenu(
            itemList: [
              {
                'iconData': Icons.book_outlined,
                'text': 'Books',
                'url': ''
              },
              {
                'iconData': Icons.flight_outlined,
                'text': 'Flights',
                'url': ''
              },
              {
                'iconData': Icons.attach_money_outlined,
                'text': 'Finance',
                'url': ''
              },
              {
                'iconData': Icons.map_outlined,
                'text': 'Maps',
                'url': ''
              },
            ],
          ),
        ],
      ),
    );
  }
}
