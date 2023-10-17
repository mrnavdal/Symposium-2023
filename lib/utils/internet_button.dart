import 'package:flutter/material.dart';
import 'package:symposium/assets/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class InternetButton extends StatelessWidget {
  const InternetButton({super.key, required this.icon, required this.buttonText, required this.url});

  final IconData icon;
  final String buttonText;
  final String url;

  @override
  Widget build(BuildContext context)  {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: SymposiumColors.symposiumRed.color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0))),
        onPressed: () {
          _launchURL(url);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              color: SymposiumColors.symposiumWhite.color,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                buttonText,
                style: TextStyle(color: SymposiumColors.symposiumWhite.color),
              ),
            ),
          ],
        ));
  }

  _launchURL(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
