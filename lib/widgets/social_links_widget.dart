import 'package:flutter/material.dart';

class SocialLinksWidget extends StatelessWidget {
  final String imgPath;

  const SocialLinksWidget({Key? key, required this.imgPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Image.asset(
        imgPath,
        height: 40,
        width: 20,
        // color: Colors.white,
      ),
    );
  }
}
