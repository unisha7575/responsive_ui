import 'package:debasmita_assignment/constants/json_data_file.dart';

import 'package:flutter/material.dart';

import '../../constants/web_urls.dart';
import '../../utils/my_utils.dart';

import '../widgets/about_container.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/based_in_widget.dart';
import '../widgets/header_text.dart';
import '../widgets/name_widget.dart';
import '../widgets/portfolio_widget.dart';
import '../widgets/social_links_widget.dart';
import '../widgets/work_experience.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const AppbarWidget(),
            const SizedBox(
              height: 10,
            ),
            const HeaderText(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: WorkExperience(
                        firstLine: allData['workExperience']['experienceYear'],
                        secondLine: allData['workExperience']['experienceText'],
                        bgColor: Colors.teal,
                        textColor: Colors.white,
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.010,
                  ),
                  Expanded(
                      flex: 1,
                      child: WorkExperience(
                        firstLine: allData['workExperience']['projectNo'],
                        secondLine: allData['workExperience']['project'],
                        bgColor: Colors.amber,
                        textColor: Colors.black,
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.010,
                  ),
                  Expanded(
                      flex: 1,
                      child: WorkExperience(
                        firstLine: allData['workExperience']['clientsNo'],
                        secondLine: allData['workExperience']['clientsNo'],
                        bgColor: Colors.pinkAccent,
                        textColor: Colors.white,
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.49,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),

                  // Image row of second column

                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.network(
                              allData['bimaSaktiImage'],
                              width: MediaQuery.of(context).size.width * 0.244,
                              height: MediaQuery.of(context).size.height * 0.6,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const NameWidget(),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                const BasedInWidget(),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),

                                ///Social links
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        await MyUtils()
                                            .urlLauncher(WebUrls.instaUrl);
                                      },
                                      child: SocialLinksWidget(
                                        imgPath: allData['socialLinksImage']
                                            ['twitterLogo'],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        await MyUtils()
                                            .urlLauncher(WebUrls.linkedinUrl);
                                      },
                                      child: SocialLinksWidget(
                                        imgPath: allData['socialLinksImage']
                                            ['linkedinLogo'],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        await MyUtils()
                                            .urlLauncher(WebUrls.instaUrl);
                                      },
                                      child: SocialLinksWidget(
                                        imgPath: allData['socialLinksImage']
                                            ['instagramLogo'],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        await MyUtils()
                                            .urlLauncher(WebUrls.youTubeUrl);
                                      },
                                      child: SocialLinksWidget(
                                        imgPath: allData['socialLinksImage']
                                            ['internetLogo'],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(15)),
              height: MediaQuery.of(context).size.height * 0.36,
              width: MediaQuery.of(context).size.width * 0.6,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(allData['portfolio']),
                        const Spacer(),
                        Text(allData['portfolioText']),
                      ],
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            PortfolioWidget(
                              images: allData['portfolioImage'],
                              width: MediaQuery.of(context).size.width * 0.28,
                              height: MediaQuery.of(context).size.height * 0.22,
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
                                      fontSize: 22),
                                )))
                          ],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        PortfolioWidget(
                          images: allData['portfolioImage'],
                          width: MediaQuery.of(context).size.width * 0.29,
                          height: MediaQuery.of(context).size.height * 0.22,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        PortfolioWidget(
                          images: allData['portfolioImage'],
                          width: MediaQuery.of(context).size.width * 0.29,
                          height: MediaQuery.of(context).size.height * 0.22,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const AboutContainer(),
          ],
        ),
      )),
    );
  }
}
