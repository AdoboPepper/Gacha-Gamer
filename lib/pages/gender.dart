import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/root_app.dart';
import 'package:tinder_clone/pages/welcome_to_tinder.dart';
import 'package:tinder_clone/pages/name.dart';

import 'game_preferences.dart';

class Gender extends StatefulWidget {
  String firstName;
  String age;
  Gender({this.firstName, this.age});

  @override
  State<Gender> createState() => _GenderState();
}

Color _colorContainer1 = Colors.transparent;
Color _colorContainer2 = Colors.transparent;
Color _colorContainer3 = Colors.transparent;
Color _fontColor1 = Colors.black54;
Color _fontColor2 = Colors.black54;
Color _fontColor3 = Colors.black54;

String _preference = "";

class _GenderState extends State<Gender> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 35,
            color: Colors.black54,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => pageA()));
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50, right: 100),
              child: Text(
                "Show Me ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.black54),
              ),
            ),
            SizedBox(height: 100),

            Ink(
                child: InkWell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        border: Border.all(color: _fontColor1, width: 2),
                        borderRadius: BorderRadius.circular(50),
                        color: _colorContainer1,
                      ),
                      child: Center(
                        child: Text(
                          'WOMEN',
                          style: TextStyle(
                            color: _fontColor1,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    if (_preference == "WOMEN") {
                      return;
                    }
                    setState(() {
                      _colorContainer1 = Colors.purple[600];
                      _fontColor1 = Colors.white;

                      _colorContainer2 = Colors.transparent;
                      _colorContainer3 = Colors.transparent;
                      _fontColor2 = Colors.black54;
                      _fontColor3 = Colors.black54;

                      _preference = "WOMEN";
                    });
                  },
                )),
            SizedBox(
              height: 10,
            ),
            Ink(
                child: InkWell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        border: Border.all(color: _fontColor2, width: 2),
                        borderRadius: BorderRadius.circular(50),
                        color: _colorContainer2,
                      ),
                      child: Center(
                        child: Text(
                          'MEN',
                          style: TextStyle(
                            color: _fontColor2,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    if (_preference == "MEN") {
                      return;
                    }
                    setState(() {
                      _colorContainer2 = Colors.purple[600];
                      _fontColor2 = Colors.white;

                      _colorContainer1 = Colors.transparent;
                      _colorContainer3 = Colors.transparent;
                      _fontColor1 = Colors.black54;
                      _fontColor3 = Colors.black54;

                      _preference = "MEN";
                    });
                  },
                )),
            SizedBox(
              height: 10,
            ),
            Ink(
                child: InkWell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        border: Border.all(color: _fontColor3, width: 2),
                        borderRadius: BorderRadius.circular(50),
                        color: _colorContainer3,
                      ),
                      child: Center(
                        child: Text(
                          'I LIKE EVERYTHING',
                          style: TextStyle(
                            color: _fontColor3,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    if (_preference == "NON-BINARY") {
                      return;
                    }
                    setState(() {
                      _colorContainer3 = Colors.purple[600];
                      _fontColor3 = Colors.white;

                      _colorContainer1 = Colors.transparent;
                      _colorContainer2 = Colors.transparent;
                      _fontColor1 = Colors.black54;
                      _fontColor2 = Colors.black54;

                      _preference = "NON-BINARY";
                    });
                  },

                )),


            SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),

            ),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GamePreferences(firstname: widget.firstName, age: widget.age, preference: _preference),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.purple[600],
                  ),
                  child: const Center(
                    child: Text(
                      'CONTINUE',
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
    );
  }
}
