import 'package:debasmita_assignment/constants/json_data_file.dart';
import 'package:debasmita_assignment/utils/my_utils.dart';
import 'package:flutter/material.dart';

import '../../constants/web_urls.dart';
import '../widgets/about_container.dart';
import '../widgets/based_in_widget.dart';
import '../widgets/header_text.dart';
import '../widgets/name_widget.dart';
import '../widgets/portfolio_widget.dart';
import '../widgets/social_links_widget.dart';
import '../widgets/work_experience.dart';


class DesktopScreen extends StatefulWidget {

  const DesktopScreen({Key? key}) : super(key: key);

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // first row of parent widget
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.black,
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width * 0.49,
                      //color: Colors.black12,
                      child: Column(
                        children: [
                          const HeaderText(),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.010,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: WorkExperience(
                                        firstLine: allData['workExperience']
                                            ['experienceYear'],
                                        secondLine: allData['workExperience']
                                            ['experienceText'],
                                        bgColor: Colors.teal,
                                        textColor: Colors.white,
                                      )),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.010),
                                  Expanded(
                                      flex: 1,
                                      child: WorkExperience(
                                        firstLine: allData['workExperience']
                                            ['projectNo'],
                                        secondLine: allData['workExperience']
                                            ['project'],
                                        bgColor: Colors.amber,
                                        textColor: Colors.black,
                                      )),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.010,
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: WorkExperience(
                                        firstLine: allData['workExperience']
                                            ['clientsNo'],
                                        secondLine: allData['workExperience']
                                            ['clients'],
                                        bgColor: Colors.pinkAccent,
                                        textColor: Colors.white,
                                      )),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  //second column of first row
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                      ),
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width * 0.49,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(15)),
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  Text(allData['searchName']),
                                  const Spacer(),
                                  const Icon(Icons.menu),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
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
                                      width: MediaQuery.of(context).size.width *
                                          0.244,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.6,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const NameWidget(),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.01,
                                        ),
                                        const BasedInWidget(),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.01,
                                        ),

                                        ///Social links
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            GestureDetector(
                                              onTap: () async {
                                                await MyUtils().urlLauncher(WebUrls.twitterUrl);//_launchUrl(_url);
                                              },
                                              child: SocialLinksWidget(
                                                imgPath:
                                                    allData['socialLinksImage']
                                                        ['twitterLogo'],
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () async {
                                                await MyUtils().urlLauncher(WebUrls.linkedinUrl);//_launchUrl(_url);
                                              },
                                              child: SocialLinksWidget(
                                                imgPath:
                                                    allData['socialLinksImage']
                                                        ['linkedinLogo'],
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () async {
                                                await MyUtils().urlLauncher(WebUrls.instaUrl);//_launchUrl(_url);
                                              },
                                              child: SocialLinksWidget(
                                                imgPath:
                                                    allData['socialLinksImage']
                                                        ['instagramLogo'],
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () async {
                                                await MyUtils().urlLauncher(WebUrls.youTubeUrl);//_launchUrl(_url);
                                              },
                                              child: SocialLinksWidget(
                                                imgPath:
                                                    allData['socialLinksImage']
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
                  )
                ],
              ),

              //Second row of parent column
              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(15)),
                    height: MediaQuery.of(context).size.height * 0.36,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 15),
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
                                    width: MediaQuery.of(context).size.width *
                                        0.18,
                                    height: MediaQuery.of(context).size.height *
                                        0.22,
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
                                width: MediaQuery.of(context).size.width * 0.18,
                                height:
                                    MediaQuery.of(context).size.height * 0.22,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              PortfolioWidget(
                                images: allData['portfolioImage'],
                                width: MediaQuery.of(context).size.width * 0.18,
                                height:
                                    MediaQuery.of(context).size.height * 0.22,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  const AboutContainer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


}
