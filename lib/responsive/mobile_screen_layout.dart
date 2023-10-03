import 'package:flutter/material.dart';
import 'package:proton_search/colors.dart';
import 'package:proton_search/responsive/my_popup_menu.dart';
import 'package:proton_search/widgets/menu_drawer.dart';
import 'package:proton_search/Custom_Icons_Icons.dart';
import 'package:proton_search/widgets/mobile/mobile_footer.dart';
import 'package:proton_search/widgets/mobile/mobile_search.dart';
import 'package:proton_search/widgets/signin_button.dart';
import 'package:proton_search/widgets/social_handles.dart';
import 'package:proton_search/widgets/web/search_buttons.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({super.key});

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  IconData? selectedIcon;

  // Function to navigate to SearchScreen with a query
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false, // to avoid bottom overflow error
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          onPressed: () {
            //global key
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
        actions: const [
          Center(
            child: MyPopupMenu(
              itemList: [
                {
                  'iconData': CustomIcons.proton_calendar_badge_b2dvlq,
                  'text': 'ProtonCalender',
                  'url': 'https://proton.me/calendar'
                },
                {
                  'iconData': CustomIcons.proton_drive_badge_mdkwag,
                  'text': 'ProtonDrive',
                  'url': 'https://proton.me/drive'
                },
                {
                  'iconData': CustomIcons.proton_mail_badge_puvcia,
                  'text': 'ProtonMail',
                  'url': 'https://proton.me/mail'
                },
                {
                  'iconData': CustomIcons.proton_pass_badge_gvwfkv,
                  'text': 'ProtonPass',
                  'url': 'https://proton.me/pass'
                },
                {
                  'iconData': CustomIcons.proton_vpn_badge_woheus,
                  'text': 'ProtonVPN',
                  'url': 'https://protonvpn.com/'
                },
              ],
            ),
          ),
          SizedBox(width: 10),
          SigninButton(),
        ],
      ),
      drawer: const SafeArea(child: MenuDrawer()),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 5,
          right: 5,
        ),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.25,
            ),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      MobileSearch(),
                      SizedBox(
                        height: 20,
                      ),
                      SearchButtons(),
                      SizedBox(
                        height: 36,
                      ),
                      SocialHandles(),
                    ],
                  ),
                  // ListView(
                  //   reverse: true,
                  //   children: const [
                  //     MobileFooter(),
                  //   ],
                  // ),
                  MobileFooter(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*
popup menu items
    - assets/images/ProtonCalender-icon.png
    - assets/images/ProtonDrive-icon.png
    - assets/images/ProtonMail-icon.png
    - assets/images/ProtonPass-icon.png
    - assets/images/ProtonVPN-icon.png
*/
