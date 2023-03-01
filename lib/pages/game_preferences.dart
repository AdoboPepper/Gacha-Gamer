import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/root_app.dart';
import 'package:tinder_clone/pages/welcome_to_tinder.dart';
import 'package:tinder_clone/pages/name.dart';

class GamePreferences extends StatefulWidget {
  String firstname;
  String age;
  String preference;

  GamePreferences({this.firstname,this.age, this.preference});

  @override
  State<GamePreferences> createState() => _GamePreferencesState();
}

class _GamePreferencesState extends State<GamePreferences> {
  List<int> myList = [];

  Color _borderColor1 = Colors.transparent;
  Color _borderColor2 = Colors.transparent;
  Color _borderColor3 = Colors.transparent;
  Color _borderColor4 = Colors.transparent;
  Color _borderColor5 = Colors.transparent;
  Color _borderColor6 = Colors.transparent;
  Color _borderColor7 = Colors.transparent;
  Color _borderColor8 = Colors.transparent;
  Color _borderColor9 = Colors.transparent;
  Color _borderColor10 = Colors.transparent;
  Color _borderColor11 = Colors.transparent;
  Color _borderColor12 = Colors.transparent;

  void modifyList(int number) {
    Color borderColor;
    switch (number) {
      case 1:
        borderColor = _borderColor1;
        break;
      case 2:
        borderColor = _borderColor2;
        break;
      case 3:
        borderColor = _borderColor3;
        break;
      case 4:
        borderColor = _borderColor4;
        break;
      case 5:
        borderColor = _borderColor5;
        break;
      case 6:
        borderColor = _borderColor6;
        break;
      case 7:
        borderColor = _borderColor7;
        break;
      case 8:
        borderColor = _borderColor8;
        break;
      case 9:
        borderColor = _borderColor9;
        break;
      case 10:
        borderColor = _borderColor10;
        break;
      case 11:
        borderColor = _borderColor11;
        break;
      case 12:
        borderColor = _borderColor12;
        break;
      default:
        print('Invalid case');
        return;
    }

    if (borderColor == Colors.purple) {
      // Add number to the list
      myList.add(number);
    } else if (borderColor == Colors.transparent) {
      // Remove number from the list
      myList.remove(number);
    }
  }

  void _onTap(int number) {
    switch (number) {
      case 1:
        setState(() {
          _borderColor1 = _borderColor1 == Colors.transparent
              ? Colors.purple
              : Colors.transparent;
          modifyList(number);
        });
        break;
      case 2:
        setState(() {
          _borderColor2 = _borderColor2 == Colors.transparent
              ? Colors.purple
              : Colors.transparent;
          modifyList(number);
        });
        break;
      case 3:
        setState(() {
          _borderColor3 = _borderColor3 == Colors.transparent
              ? Colors.purple
              : Colors.transparent;
          modifyList(number);
        });
        break;
      case 4:
        setState(() {
          _borderColor4 = _borderColor4 == Colors.transparent
              ? Colors.purple
              : Colors.transparent;
          modifyList(number);
        });
        break;
      case 5:
        setState(() {
          _borderColor5 = _borderColor5 == Colors.transparent
              ? Colors.purple
              : Colors.transparent;
          modifyList(number);
        });
        break;
      case 6:
        setState(() {
          _borderColor6 = _borderColor6 == Colors.transparent
              ? Colors.purple
              : Colors.transparent;
          modifyList(number);
        });
        break;
      case 7:
        setState(() {
          _borderColor7 = _borderColor7 == Colors.transparent
              ? Colors.purple
              : Colors.transparent;
          modifyList(number);
        });
        break;
      case 8:
        setState(() {
          _borderColor8 = _borderColor8 == Colors.transparent
              ? Colors.purple
              : Colors.transparent;
          modifyList(number);
        });
        break;
      case 9:
        setState(() {
          _borderColor9 = _borderColor9 == Colors.transparent
              ? Colors.purple
              : Colors.transparent;
          modifyList(number);
        });
        break;
      case 10:
        setState(() {
          _borderColor10 = _borderColor10 == Colors.transparent
              ? Colors.purple
              : Colors.transparent;
          modifyList(number);
        });
        break;
      case 11:
        setState(() {
          _borderColor11 = _borderColor11 == Colors.transparent
              ? Colors.purple
              : Colors.transparent;
          modifyList(number);
        });
        break;
      case 12:
        setState(() {
          _borderColor12 = _borderColor12 == Colors.transparent
              ? Colors.purple
              : Colors.transparent;
          modifyList(number);
          for (int element in myList) {
            print(element);
          }
        });
        break;
      default:
        print('Invalid case');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50, right: 100),
              child: Text(
                "What do you like to play?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black54),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Find your game",
                  prefixIcon: Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple[600])),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: _borderColor1,
                      width: 5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: GestureDetector(
                      onTap: () => _onTap(1),
                      child: Image.asset('assets/images/games/dota.jpg',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: _borderColor2,
                      width: 5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: GestureDetector(
                      onTap: () => _onTap(2),
                      child: Image.asset('assets/images/games/fornite.jpg',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: _borderColor3,
                      width: 5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: GestureDetector(
                      onTap: () => _onTap(3),
                      child: Image.asset('assets/images/games/gtav.jpg',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Dota 2     ",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                Text(
                  "Fortnite",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                Text(
                  "     Gta V",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: _borderColor4,
                      width: 5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: GestureDetector(
                      onTap: () => _onTap(4),
                      child: Image.asset('assets/images/games/lol.jpg',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: _borderColor5,
                      width: 5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: GestureDetector(
                      onTap: () => _onTap(5),
                      child: Image.asset('assets/images/games/minecraft.jpg',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: _borderColor6,
                      width: 5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: GestureDetector(
                      onTap: () => _onTap(6),
                      child: Image.asset('assets/images/games/pogo.jpg',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "          Lol   ",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                Text(
                  "           Minecraft",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                Text(
                  "      Pokemon Go ",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: _borderColor7,
                      width: 5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: GestureDetector(
                      onTap: () => _onTap(7),
                      child: Image.asset('assets/images/games/rdr2.jpg',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: _borderColor8,
                      width: 5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: GestureDetector(
                      onTap: () => _onTap(8),
                      child: Image.asset('assets/images/games/roblox.jpg',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: _borderColor9,
                      width: 5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: GestureDetector(
                      onTap: () => _onTap(9),
                      child: Image.asset('assets/images/games/rocketleague.jpg',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "        RDR 2",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                Text(
                  "            Roblox   ",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                Text(
                  "    Rocket League",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: _borderColor10,
                      width: 5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: GestureDetector(
                      onTap: () => _onTap(10),
                      child: Image.asset('assets/images/games/smashbros.jpg',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: _borderColor11,
                      width: 5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: GestureDetector(
                      onTap: () => _onTap(11),
                      child: Image.asset('assets/images/games/rainbowsix.jpg',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: _borderColor12,
                      width: 5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: GestureDetector(
                      onTap: () => _onTap(12),
                      child: Image.asset('assets/images/games/valorant.png',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "   Super Smash \n          Bros.   ",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                Text(
                  "   Rainbow Six        ",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                Text(
                  "Valorant      ",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context) => RootPage(firstName: widget.firstname, age: widget.age, myList: myList, preference: widget.preference),
                      )
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
