import 'package:checking_app/data/configuration.dart';
import 'package:checking_app/pages/episode_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'detail_page.dart';

class ReviewPage extends StatefulWidget {
  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  int pressCount = 0;
  int _currentIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[100],
        toolbarHeight: 35,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: black.withOpacity(0.7),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Colors.white),
                      color: Color(0xffc0c2cf),
                      borderRadius: BorderRadius.circular(5)),
                  height: 220,
                  width: MediaQuery.of(context).size.width / 2.7,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 220,
                  width: MediaQuery.of(context).size.width / 1.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomGoogleFont(
                        text: 'Desvendando Princesas',
                        size: 23,
                        color: indigo.withOpacity(0.8),
                        weight: FontWeight.w400,
                      ),
                      CustomGoogleFont(
                        text: 'By Flower Books',
                        size: 14,
                        color: indigo.withOpacity(0.7),
                        weight: FontWeight.w300,
                      ),
                      SizedBox(
                        height: 65,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                CustomGoogleFont(
                                  text: 'Episodes',
                                  size: 11,
                                  color: triadic,
                                  weight: FontWeight.w400,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                CustomGoogleFont(
                                  text: '22',
                                  size: 12,
                                  color: indigo,
                                  weight: FontWeight.bold,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                CustomGoogleFont(
                                  text: 'View count',
                                  size: 11,
                                  color: triadic,
                                  weight: FontWeight.w400,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                CustomGoogleFont(
                                  text: '220',
                                  size: 12,
                                  color: indigo,
                                  weight: FontWeight.bold,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                CustomGoogleFont(
                                  text: 'Rating',
                                  size: 11,
                                  color: triadic,
                                  weight: FontWeight.w400,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                CustomGoogleFont(
                                  text: '5.0',
                                  size: 12,
                                  color: indigo,
                                  weight: FontWeight.bold,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.gratipay,
                              color: Colors.red[300],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Icon(
                              Icons.share_outlined,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15.0, right: 15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => EpisodePage(),
                        ));
                      },
                      child: CustomGoogleFont(
                        text: 'Summary',
                        size: 16,
                        color: pressCount == 2 ? grey500 : triadic,
                        weight: FontWeight.w400,
                      ),
                    ),
                    VerticalDivider(
                      thickness: 0.5,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailPage(),
                        ));
                      },
                      child: CustomGoogleFont(
                        text: 'Episodes',
                        size: 16,
                        color: pressCount == 1 ? grey500 : triadic,
                        weight: FontWeight.w400,
                      ),
                    ),
                    VerticalDivider(
                      thickness: 0.5,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: CustomGoogleFont(
                        text: 'Reviews',
                        size: 16,
                        color: pressCount == 0 ? grey500 : triadic,
                        weight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(top: 20, left: 15.0, right: 15),
                  child: Container(
                    height: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xffc0c2cf),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomGoogleFont(
                                      text: 'Carlos Day',
                                      size: 15,
                                      color: indigo.withOpacity(0.8),
                                      weight: FontWeight.w400),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  CustomGoogleFont(
                                      text: '5 Days Ago',
                                      size: 13,
                                      color: triadic,
                                      weight: FontWeight.w500),
                                ],
                              )
                            ],
                          ),
                        ),
                        BottonText(
                            text1: 'Love it !!!',
                            text2: 'I have a chance to my knowledge. Thank')
                      ],
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15.0, right: 15),
              child: Container(
                height: 185,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomGoogleFont(
                        text: 'Leave a Comment',
                        size: 17,
                        color: indigo,
                        weight: FontWeight.bold),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 15.0, right: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: grey200,
                        ),
                        height: 75,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomGoogleFont(
                              text: 'Do you want to write something ?',
                              size: 15,
                              color: indigo.withOpacity(0.7),
                              weight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[400],
                      ),
                      height: 35,
                      child: Center(
                        child: CustomGoogleFont(
                            text: 'Comment',
                            size: 17,
                            color: white,
                            weight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: new Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_rounded), label: 'Library')
        ],
      ),
    );
  }
}

class BottonText extends StatelessWidget {
  final String text1, text2;
  BottonText({required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomGoogleFont(
                  text: text1,
                  size: 15,
                  color: indigo,
                  weight: FontWeight.w400),
              CustomGoogleFont(
                  text: text2,
                  size: 15,
                  color: indigo,
                  weight: FontWeight.w400),
            ],
          ),
        ),
      ],
    );
  }
}
