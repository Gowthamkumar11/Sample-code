import 'package:checking_app/data/configuration.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _currentIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Colors.grey,
            ),
            height: MediaQuery.of(context).size.height / 1.6,
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 160,
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: black.withOpacity(0.7),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                backgroundColor: Colors.transparent,
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, bottom: 10),
                      child: Center(
                        child: CustomGoogleFont(
                          text: 'The Camp',
                          color: indigo,
                          size: 25,
                          weight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, bottom: 10),
                      child: Center(
                        child: CustomGoogleFont(
                          text: 'By John',
                          size: 17,
                          color: white,
                          weight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              CustomGoogleFont(
                                text: 'Rating',
                                size: 11,
                                color: white,
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
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              CustomGoogleFont(
                                text: 'Pages',
                                size: 11,
                                color: white,
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
                                text: 'Views',
                                size: 11,
                                color: white,
                                weight: FontWeight.w400,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              CustomGoogleFont(
                                text: '1728',
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
                          // Icon(
                          //   FontAwesomeIcons.gratipay,
                          //   color: Colors.red[300],
                          // ),
                          SizedBox(
                            width: 150,
                          ),
                          Icon(
                            Icons.share_outlined,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[300],
                        ),
                        height: 800,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: pink,
                              ),
                              height: 50,
                              child: Center(
                                child: CustomGoogleFont(
                                    text: 'Buy For \$62.8',
                                    size: 17,
                                    color: white,
                                    weight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomGoogleFontSpace(
                                text: 'Summary',
                                size: 25,
                                color: indigo,
                                weight: FontWeight.w500),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 25.0, top: 10),
                              child: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SummaryText(
                                        text:
                                            '"I heard you."\n"It was a slight little misunderstanding."\n"You had a fight."\n"We made up this morning," I concede, knowing\nthat we could argue about the meaning of a fight\nfor the entire two hours of Kiki-time.\nShe shovels a few more spoonfuls into her mouth\nbefore she goes on: "I avoid like it when you fight."\n"I avoid like it either. But every married couple fights\nfrom time to time, sweetie. It blows over quickly. I\nlove mommy, and she loves me." Although we \nhaven\'t actually said it to each other in a while.\n"Well, avoid fight anymore.Khai cried whole night."',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: ClampingScrollPhysics(),
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15, bottom: 10),
                                  child: Container(
                                    height: 115,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.transparent,
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                backgroundColor:
                                                    Color(0xffc0c2cf),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomGoogleFont(
                                                      text: 'Carlos Day',
                                                      size: 15,
                                                      color: indigo
                                                          .withOpacity(0.8),
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
                                            text2:
                                                'I have a chance to my knowledge. Thank'),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                CircleAvatar(
                                  backgroundColor: white,
                                  radius: 35,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        CustomGoogleFont(
                                            text: 'Flower Books',
                                            size: 15,
                                            color: indigo.withOpacity(0.8),
                                            weight: FontWeight.w400),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Icon(
                                          Icons.verified,
                                          color: Colors.blue,
                                        )
                                      ],
                                    ),
                                    Container(
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.grey[700],
                                      ),
                                      height: 30,
                                      child: Center(
                                        child: CustomGoogleFont(
                                            text: 'Follow',
                                            size: 13,
                                            color: white,
                                            weight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
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

class SummaryText extends StatelessWidget {
  final String text;
  SummaryText({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      child: CustomGoogleFont(
          text: text, size: 11, color: Colors.grey, weight: FontWeight.w500),
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
