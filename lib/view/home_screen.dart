import 'package:debasmita_assignment/image_paths.dart';
import 'package:debasmita_assignment/widgets/based_in_widget.dart';
import 'package:debasmita_assignment/widgets/social_links_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/about_container.dart';
import '../widgets/header_text.dart';
import '../widgets/name_widget.dart';
import '../widgets/work_experience.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                                      child: const WorkExperience(firstLine: '2+', secondLine: "Your Experience", bgColor: Colors.teal, textColor: Colors.white)),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.010,
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: const WorkExperience(firstLine: '54+', secondLine: "Handled Project", bgColor: Colors.amber, textColor: Colors.black)),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.010,
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: const WorkExperience(firstLine: '40+', secondLine: "Clients", bgColor: Colors.pinkAccent, textColor: Colors.white)),
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
                                children: const [
                                  Text("Bim Graph"),
                                  Spacer(),
                                  Icon(Icons.menu),
                                ],
                              ),
                            ),
                          ),
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
                                    child: Container(
                                      child: Image.network(
                                        "https://images.pexels.com/photos/850359/pexels-photo-850359.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.244,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.6,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.01,
                                          ),
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
                                            children: const [
                                              SocialLinksWidget(
                                                  imgPath:
                                                      ImagePaths.linkedinLogo),
                                              SocialLinksWidget(
                                                  imgPath:
                                                      ImagePaths.internetLogo),
                                              SocialLinksWidget(
                                                  imgPath:
                                                      ImagePaths.twitterLogo),
                                              SocialLinksWidget(
                                                  imgPath:
                                                      ImagePaths.instagramLogo),
                                            ],
                                          ),
                                        ],
                                      ),
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
                        borderRadius: BorderRadius.circular(10)),
                    height: MediaQuery.of(context).size.height * 0.36,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("UI Portfolio"),
                              Spacer(),
                              Text("See All"),
                            ],
                          ),
                          const SizedBox(
                            height: 17,
                          ),
                          Row(
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(
                                      "https://images.pexels.com/photos/850359/pexels-photo-850359.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                                      width: MediaQuery.of(context).size.width *
                                          0.19,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.27,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Positioned(
                                      right: 10,
                                      left: 7,
                                      top: 65,
                                      child: Center(child: Text("Read More")))
                                ],
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  "https://images.pexels.com/photos/850359/pexels-photo-850359.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                                  width:
                                      MediaQuery.of(context).size.width * 0.18,
                                  height:
                                      MediaQuery.of(context).size.height * 0.27,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  "https://images.pexels.com/photos/850359/pexels-photo-850359.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                                  width:
                                      MediaQuery.of(context).size.width * 0.19,
                                  height:
                                      MediaQuery.of(context).size.height * 0.27,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          )
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
