import 'package:debasmita_assignment/constants/web_urls.dart';
import 'package:debasmita_assignment/utils/portfolio_responsive.dart';

import 'package:flutter/material.dart';

import '../../constants/json_data_file.dart';
import '../../utils/my_utils.dart';
import '../widgets/about_container.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/based_in_widget.dart';
import '../widgets/header_text.dart';
import '../widgets/name_widget.dart';
import '../widgets/portfolio_widget.dart';
import '../widgets/social_links_widget.dart';
import '../widgets/work_experience.dart';


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
                    firstLine: allData['workExperience']['experienceYear'],
                    secondLine: allData['workExperience']['experienceText'],
                    bgColor: Colors.teal,
                    textColor: Colors.white,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  WorkExperience(
                      firstLine: allData['workExperience']['projectNo'],
                      secondLine: allData['workExperience']['project'],
                      bgColor: Colors.amber,
                      textColor: Colors.black),
                  const SizedBox(
                    height: 10,
                  ),
                  WorkExperience(
                      firstLine:allData['workExperience']['clientsNo'],
                      secondLine: allData['workExperience']['clients'],
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
                        allData
                        ['bimaSaktiImage'],
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
                        children:  [

                          InkWell(
                            onTap: ()async{
                            await MyUtils().urlLauncher (WebUrls.twitterUrl);
                            },
                            child: SocialLinksWidget(
                              imgPath:  allData['socialLinksImage']
                              ['twitterLogo'],),
                          ),
                    InkWell(
                      onTap: ()async{
                        await MyUtils().urlLauncher (WebUrls.linkedinUrl);
                      },
                      child:
                          SocialLinksWidget(
                            imgPath:
                            allData['socialLinksImage']
                            ['linkedinLogo'],),),
                          InkWell(
                            onTap: () async {
                              await MyUtils().urlLauncher(WebUrls.instaUrl);
                            },
                            child: SocialLinksWidget(
                            imgPath: allData['socialLinksImage']
                            ['instagramLogo'],
                          ),),
                    InkWell(
                      onTap: ()async{
                        await MyUtils().urlLauncher (WebUrls.youTubeUrl);
                      },
                      child:
                          SocialLinksWidget(
                            imgPath: allData['socialLinksImage']
                            ['internetLogo'],),),
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
                            children:  [
                              Text(allData['portfolio']),
                              Spacer(),
                              Text(allData['portfolioText']),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                PortfolioWidget(
                                  images: allData['portfolioImage'],
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
                              images: allData['portfolioImage'],
                              width: MediaQuery.of(context).size.width * 0.28,
                              height: MediaQuery.of(context).size.height * 0.18,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            PortfolioWidget(
                              images: allData['portfolioImage'],
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
