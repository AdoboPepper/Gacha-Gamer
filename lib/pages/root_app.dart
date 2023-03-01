import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tinder_clone/pages/account_page.dart';
import 'package:tinder_clone/pages/chat_page.dart';
import 'package:tinder_clone/pages/explore_page.dart';
import 'package:tinder_clone/pages/likes_page.dart';

class RootPage extends StatefulWidget {
  String firstName;
  String age;
  final List<int> myList;
  final String preference;

  RootPage({Key key, this.firstName, this.age, this.myList, this.preference}) : super(key: key);


  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [ExplorePage(myList: widget.myList, preference: widget.preference), LikesPage(), ChatPage(), AccountPage(firstName: widget.firstName, age: widget.age)],
    );
  }

  Widget getAppBar() {
    List bottomItems = [
      pageIndex == 0
          ? "assets/images/explore_active_icon.svg"
          : "assets/images/explore_icon.svg",
      pageIndex == 1
          ? "assets/images/likes_active_icon.svg"
          : "assets/images/likes_icon.svg",
      pageIndex == 2
          ? "assets/images/chat_active_icon.svg"
          : "assets/images/chat_icon.svg",
      pageIndex == 3
          ? "assets/images/account_active_icon.svg"
          : "assets/images/account_icon.svg",
    ];
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(bottomItems.length, (index) {
              return IconButton(
                iconSize: 30,
                onPressed: () {
                  setState(() {
                    pageIndex = index;
                  });
                },
                icon: SvgPicture.asset(
                  bottomItems[index],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}