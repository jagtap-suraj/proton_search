import 'package:flutter/material.dart';
import 'package:proton_search/colors.dart';

class SearchTab extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final String text;
  const SearchTab({super.key, required this.icon, this.isActive = false, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 18,
              color: isActive ? purpleColor : Colors.grey,
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              text,
              style: TextStyle(color: isActive ? purpleColor : Colors.grey, fontSize: 14),
            ),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        Container(
          height: 3,
          width: 40,
          color: purpleColor.withOpacity(isActive ? 1 : 0),
        )
      ],
    );
  }
}

class MyPopupMenuButton extends StatelessWidget {
  const MyPopupMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => [
        const PopupMenuItem(
            child: Row(
          children: [
            //book
            Icon(
              Icons.book_outlined,
              color: Colors.grey,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              'Books',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        )),
        const PopupMenuItem(
            child: Row(
          //flight
          children: [
            Icon(
              Icons.flight_outlined,
              color: Colors.grey,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              'Flights',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        )),
        const PopupMenuItem(
            child: Row(
          children: [
            //finance
            Icon(
              Icons.attach_money_outlined,
              color: Colors.grey,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              'Finance',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        )),
        const PopupMenuItem(
          child: Row(
            children: [
              //Maps
              Icon(
                Icons.map_outlined,
                color: Colors.grey,
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                'Maps',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),
        ),
      ],
      icon: const Row(
        children: [
          Icon(
            Icons.more_vert_outlined,
            color: Colors.grey,
          ),
          SizedBox(
            width: 3,
          ),
          Text(
            'More',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
