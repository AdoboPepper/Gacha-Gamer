import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Color(0xff882a9b),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                    "https://via.placeholder.com/150x150.png?text=Profile+Image"),
              ),
            ),
            Text(
              "John Doe",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              "28 | Los Angeles, CA",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About Me",
                    style:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor commodo sem. Etiam luctus dolor eu augue vulputate, ut scelerisque magna rutrum.",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Interests",
                    style:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Wrap(
                    spacing: 8.0,
                    children: [
                      Chip(
                        label: Text("Video Games"),
                      ),
                      Chip(
                        label: Text("Music"),
                      ),
                      Chip(
                        label: Text("Travel"),
                      ),
                      Chip(
                        label: Text("Hiking"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}