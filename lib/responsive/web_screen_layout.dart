import 'package:flutter/material.dart';
import 'package:proton_search/colors.dart';
import 'package:proton_search/widgets/menu_drawer.dart';
import 'package:proton_search/widgets/web/web_search.dart';
import 'package:proton_search/widgets/signin_button.dart';
import 'package:proton_search/widgets/social_handles.dart';
import 'package:proton_search/widgets/web/search_buttons.dart';
import 'package:proton_search/widgets/web/web_footer.dart';

class WebScreenLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'ProtonMail',
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'ProtonVPN',
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.grey,
            ),
            onPressed: () {
              //global key
              _scaffoldKey.currentState!.openEndDrawer();
            },
          ),
          const SigninButton(),
        ],
      ),
      drawer: const MenuDrawer(),
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
                      WebSearch(),
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
                  WebFooter(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
