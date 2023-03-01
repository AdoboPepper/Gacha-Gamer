import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/welcome_to_tinder.dart';
import 'package:tinder_clone/pages/gender.dart';

class Birthday extends StatefulWidget {
  final String firstName;
  Birthday({this.firstName});

  @override
  State<Birthday> createState() => _BirthdayState();
}

class _BirthdayState extends State<Birthday> {
  TextEditingController _ageController = TextEditingController();

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
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            const Padding(
              padding: EdgeInsets.only(left: 50, right: 100),
              child: Text(
                "My birthday is ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.black54),
              ),
            ),
            SizedBox(height: 100),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Age',
                  hintStyle: TextStyle(fontSize: 20),
                ),
                controller: _ageController,
              ),
            ),
            SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text("Your age will be public",
                style: TextStyle( fontSize: 15, color: Colors.black54),),
            ),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => Gender(firstName: widget.firstName, age: _ageController.text),
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