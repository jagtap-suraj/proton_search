import 'package:flutter/material.dart';
import 'package:proton_search/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SigninButton extends StatelessWidget {
  const SigninButton({super.key});

  @override
  Widget build(BuildContext context) {
    final url = Uri.parse('https://account.proton.me/login');
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5).copyWith(
        right: 5,
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 5,
          ),
          MaterialButton(
            onPressed: () async {
              launchUrl(
                url,
                mode: LaunchMode.inAppWebView,
              );
            },
            color: purpleDarkColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Text(
              'Sign in ',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
