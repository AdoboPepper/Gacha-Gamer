import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:tinder_clone/data/explore_json.dart';
import 'package:tinder_clone/data/icons.dart';
import 'package:tinder_clone/theme/colors.dart';
import 'package:tinder_clone/widgets/person_info.dart';
import 'package:tinder_clone/pages/match.dart';
import 'dart:math';

import '../widgets/person_interest.dart';
import '../widgets/person_status.dart';
import 'log_in.dart';

class ExplorePage extends StatefulWidget {
  final List<int> myList;
  final String preference;
  ExplorePage({this.myList, this.preference});

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage>
    with TickerProviderStateMixin {
  CardController controller;

  List<Map<String, dynamic>> explore_json = [];
  List<Map<String, dynamic>> itemsTemp = [];
  int itemLength = 0;

  void updateItemsTemp() {
    itemsTemp = [];
    if (widget.preference == "WOMEN") {
      for (var item in explore_json_female) {
        List<int> likesID = item['likesID'];
        bool found = false;
        for (var id in likesID) {
          if (widget.myList.contains(id)) {
            found = true;
          }
        }
        if (found) {
          itemsTemp.add(item);
        }
      }
    } else if (widget.preference == "MEN") {
      for (var item in explore_json_male) {
        List<int> likesID = item['likesID'];
        bool found = false;
        for (var id in likesID) {
          if (widget.myList.contains(id)) {
            found = true;
          }
        }
        if (found) {
          itemsTemp.add(item);
        }
      }
    } else if (widget.preference == "NON-BINARY") {
      for (var item in explore_json_female) {
        List<int> likesID = item['likesID'];
        bool found = false;
        for (var id in likesID) {
          if (widget.myList.contains(id)) {
            found = true;
          }
        }
        if (found) {
          itemsTemp.add(item);
        }
      }

      for (var item in explore_json_male) {
        List<int> likesID = item['likesID'];
        bool found = false;
        for (var id in likesID) {
          if (widget.myList.contains(id)) {
            found = true;
          }
        }
        if (found) {
          itemsTemp.add(item);
        }
      }
    }
    itemLength = itemsTemp.length;
  }

  @override
  void initState() {
    super.initState();
    updateItemsTemp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
      bottomSheet: getBottomSheet(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: 120),
      child: Container(
        height: size.height,
        child: TinderSwapCard(
          swipeCompleteCallback: (CardSwipeOrientation orientation, int index) {
            if (orientation == CardSwipeOrientation.LEFT) {
              // Update myList and itemsTemp
              setState(() {
                widget.myList.remove(itemsTemp[index]['likesID']);
                updateItemsTemp();
              });
            } else if (orientation == CardSwipeOrientation.RIGHT) {
              if (itemsTemp[index]['likeback'] == "yes") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Match(
                        index: index,
                        preference: widget.preference,
                        itemsTemp: itemsTemp),
                  ),
                );
              } else {
                print("no");
              }
            }
          },
          totalNum: itemLength,
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height * 0.75,
          minWidth: MediaQuery.of(context).size.width * 0.75,
          minHeight: MediaQuery.of(context).size.height * 0.6,
          cardBuilder: (context, index) => Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: grey.withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 2),
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  Container(
                    width: size.width,
                    height: size.height,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(itemsTemp[index]['img']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width,
                    height: size.height,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          black.withOpacity(0.25),
                          black.withOpacity(0),
                        ],
                        end: Alignment.topCenter,
                        begin: Alignment.bottomCenter,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 5,
                                child: Container(
                                  width: size.width * 0.72,
                                  child: Column(
                                    children: [
                                      PersonInfo(
                                        name: itemsTemp[index]['name'],
                                        age: itemsTemp[index]['age'],
                                      ),
                                      SizedBox(height: 10),
                                      PersonStatus(),
                                      SizedBox(height: 15),
                                      PersonInterest(
                                          itemsTemp: itemsTemp[index]['likes'])
                                    ],
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  width: size.width * 0.2,
                                  child: Center(
                                    child: Icon(
                                      Icons.info,
                                      color: white,
                                      size: 28,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          cardController: controller = CardController(),
          swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
            /// Get swiping card's alignment
            if (align.x < 0) {
              //Card is LEFT swiping
            } else if (align.x > 0) {
              //Card is RIGHT swiping
            }
            // print(itemsTemp.length);
          },
        ),
      ),
    );
  }

  Widget getBottomSheet() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 120,
      decoration: BoxDecoration(color: white),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(item_icons.length, (index) {
            return Container(
              width: item_icons[index]['size'],
              height: item_icons[index]['size'],
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: grey.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 10,
                      // changes position of shadow
                    ),
                  ]),
              child: Center(
                child: SvgPicture.asset(
                  item_icons[index]['icon'],
                  width: item_icons[index]['icon_size'],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
