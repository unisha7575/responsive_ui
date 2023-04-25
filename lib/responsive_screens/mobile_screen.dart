import 'package:debasmita_assignment/portfolio_responsive.dart';
import 'package:debasmita_assignment/widgets/about_container.dart';
import 'package:debasmita_assignment/widgets/based_in_widget.dart';
import 'package:debasmita_assignment/widgets/header_text.dart';
import 'package:debasmita_assignment/widgets/name_widget.dart';
import 'package:debasmita_assignment/widgets/social_links_widget.dart';
import 'package:debasmita_assignment/widgets/work_experience.dart';
import 'package:flutter/material.dart';

import '../image_paths.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          shrinkWrap: true,
          children: [
            Column(
              // shrinkWrap: true,
              mainAxisSize: MainAxisSize.min,
              children: [
                const HeaderText(),
                const WorkExperience(
                    firstLine: '2+',
                    secondLine: "Your Experience",
                    bgColor: Colors.teal,
                    textColor: Colors.white),
                const WorkExperience(
                    firstLine: '54+',
                    secondLine: "Handled Project",
                    bgColor: Colors.amber,
                    textColor: Colors.black),
                const WorkExperience(
                    firstLine: '40+',
                    secondLine: "Clients",
                    bgColor: Colors.pinkAccent,
                    textColor: Colors.white),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    "https://images.pexels.com/photos/850359/pexels-photo-850359.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                    width: Responsive.isDesktop(context)?MediaQuery.of(context).size.width * 0.244:MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.6,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 55.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12.0)
                    ),
                    child: const NameWidget()),
                Container(
                    // height: 55.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12.0)
                    ),
                    child: const BasedInWidget()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SocialLinksWidget(imgPath: ImagePaths.linkedinLogo),
                    SocialLinksWidget(imgPath: ImagePaths.internetLogo),
                    SocialLinksWidget(imgPath: ImagePaths.twitterLogo),
                    SocialLinksWidget(imgPath: ImagePaths.instagramLogo),
                  ],
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12.0)
                    ),
                    child: const AboutContainer())
              ],
            ),
          ],
        ),
      ),
    );
  }
}
