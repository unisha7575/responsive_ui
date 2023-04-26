import 'package:debasmita_assignment/portfolio_responsive.dart';
import 'package:debasmita_assignment/widgets/about_container.dart';
import 'package:debasmita_assignment/widgets/appbar_widget.dart';
import 'package:debasmita_assignment/widgets/based_in_widget.dart';
import 'package:debasmita_assignment/widgets/header_text.dart';
import 'package:debasmita_assignment/widgets/name_widget.dart';
import 'package:debasmita_assignment/widgets/portfolio_widget.dart';
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
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                // shrinkWrap: true,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const AppbarWidget(),
                  const SizedBox(
                    height: 10,
                  ),
                  const HeaderText(),
                  const SizedBox(
                    height: 10,
                  ),
                  WorkExperience(
                    firstLine: '2+',
                    secondLine: "Your Experience",
                    bgColor: Colors.teal,
                    textColor: Colors.white,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  WorkExperience(
                      firstLine: '54+',
                      secondLine: "Handled Project",
                      bgColor: Colors.amber,
                      textColor: Colors.black),
                  const SizedBox(
                    height: 10,
                  ),
                  WorkExperience(
                      firstLine: '40+',
                      secondLine: "Clients",
                      bgColor: Colors.pinkAccent,
                      textColor: Colors.white),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 55.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: const NameWidget()),
                  const SizedBox(
                    height: 10,
                  ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      "https://images.pexels.com/photos/850359/pexels-photo-850359.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                      width: Responsive.isDesktop(context)
                          ? MediaQuery.of(context).size.width * 0.244
                          : MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.6,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),


                  Container(
                      // height: 55.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: const BasedInWidget()),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SocialLinksWidget(
                            imgPath: ImagePaths.linkedinLogo,
                          ),
                          SocialLinksWidget(imgPath: ImagePaths.internetLogo),
                          SocialLinksWidget(imgPath: ImagePaths.twitterLogo),
                          SocialLinksWidget(imgPath: ImagePaths.instagramLogo),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 15, bottom: 5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("UI Portfolio"),
                              Spacer(),
                              Text("See All"),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                PortfolioWidget(
                                  images: ImagePaths.porfolioImage,
                                  width:
                                      MediaQuery.of(context).size.width * 0.28,
                                  height:
                                      MediaQuery.of(context).size.height * 0.18,
                                ),
                                const Positioned(
                                    right: 10,
                                    left: 7,
                                    top: 65,
                                    child: Center(
                                        child: Text(
                                      "Read More",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 15),
                                    )))
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            PortfolioWidget(
                              images: ImagePaths.porfolioImage,
                              width: MediaQuery.of(context).size.width * 0.28,
                              height: MediaQuery.of(context).size.height * 0.18,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            PortfolioWidget(
                              images: ImagePaths.porfolioImage,
                              width: MediaQuery.of(context).size.width * 0.28,
                              height: MediaQuery.of(context).size.height * 0.18,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: const AboutContainer())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
