import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/welcome_to_tinder.dart';
import 'package:tinder_clone/pages/birthday.dart';

class FirstName extends StatefulWidget {
  const FirstName({Key key}) : super(key: key);

  @override
  State<FirstName> createState() => _FirstNameState();
}

class _FirstNameState extends State<FirstName> {
  TextEditingController _firstNameController = TextEditingController();

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
                "My first name is ",
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
                  hintText: 'First Name',
                  hintStyle: TextStyle(fontSize: 20),
                ),
                controller: _firstNameController,
              ),
            ),
            SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "This is how it will appear in Gacha Gamer and you will not be able to change it",
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
            ),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Birthday(firstName: _firstNameController.text),
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
