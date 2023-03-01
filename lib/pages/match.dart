import 'dart:js';

import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/root_app.dart';
import 'package:tinder_clone/pages/explore_page.dart';

import '../data/explore_json.dart';
import 'birthday.dart';

class Match extends StatefulWidget {

  final int index;
  final List<Map<String, dynamic>> itemsTemp;
  String preference;

  Match({Key key, this.index, this.preference, this.itemsTemp}) : super(key: key);

  @override
  State<Match> createState() => _MatchState();
}



class _MatchState extends State<Match> {
  List itemsTemp1 = [];
  int itemLength1 = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      itemsTemp1 = widget.itemsTemp;
      itemLength1 = widget.itemsTemp.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.purple[600],
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.close_rounded,
            size: 35,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(itemsTemp1[widget.index]['img']),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25, right: 20),
                child: Text(
                  "M A T C H E D ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 450),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Write a message',
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.purple[600],
                    ),
                    child: const Center(
                      child: Text(
                        'SEND',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
