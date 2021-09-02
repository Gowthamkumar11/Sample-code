import 'package:checking_app/data/configuration.dart';
import 'package:flutter/material.dart';

class EpisodePage extends StatefulWidget {
  @override
  _EpisodePageState createState() => _EpisodePageState();
}

class _EpisodePageState extends State<EpisodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.grey[300],
            automaticallyImplyLeading: false,
            toolbarHeight: 15,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(Icons.arrow_back_ios),
                            ),
                            Row(
                              children: [
                                CustomGoogleFont(
                                    text: 'A',
                                    size: 20,
                                    color: black,
                                    weight: FontWeight.w400),
                                SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.search),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          CustomGoogleFont(
                              text: 'Devine:',
                              size: 23,
                              color: black,
                              weight: FontWeight.w500),
                          SizedBox(
                            height: 10,
                          ),
                          CustomGoogleFont(
                              text: 'Walk to the city',
                              size: 23,
                              color: black,
                              weight: FontWeight.w500)
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0, top: 25),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 1.2,
                              child: CustomGoogleFontWordSpace(
                                  text:
                                      'Sit aliqua dolor do amet sintelit officia\ncons\nQual duis enim velit mollit xercitation\nonevs\nniam consequat sunt nostrud\nametmetm it\nsit aliqua dolor do amet sintelit officia\ncons\nquat duis enim velit mollit xercitation\nnenu\'s\nveniam consequat sunt nostrud amet\ninima\nqual duis enim velit mollit xercitation\nnenu\nveniam consequat sunt nostrud, \nconsequat\nsunt nostrud amet inima mollit non',
                                  size: 15,
                                  color: black.withOpacity(0.4),
                                  weight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
