import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class SocialLinksWidget extends StatelessWidget {
  final Uri _url = Uri.parse('https://flutter.dev');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
  final String imgPath;

   SocialLinksWidget({Key? key, required this.imgPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, ),
      child: Image.asset(
        imgPath,
        height: 40,
        width: 30,
        // color: Colors.white,
      ),
    );
  }
}
