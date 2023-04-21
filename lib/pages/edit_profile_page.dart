import 'package:flutter/material.dart';

class DatingProfilePage extends StatefulWidget {
  @override
  _DatingProfilePageState createState() => _DatingProfilePageState();
}

class _DatingProfilePageState extends State<DatingProfilePage> {
  bool _isSmartPhotosEnabled = false;
  int _age = 25;
  String _location = 'Los Angeles, CA';
  String _bio = '';

  String _selectedGender = 'Male'; // default selected gender

  List<String> _genderOptions = ['Male', 'Female', 'Non-binary', 'Other'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'FirstName ',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(Icons.edit),
                  color: Colors.purple[600] ,
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                children: List.generate(
                  9,
                      (index) => Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey,
                        ), // Change the color here
                        width: double.infinity,
                        height: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            'https://picsum.photos/id/${index + 1}/300/500',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Icon(Icons.close, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Smart Photos',
                  style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.bold),
                ),
                Switch(
                  value: _isSmartPhotosEnabled,
                  onChanged: (value) {
                    setState(() {
                      _isSmartPhotosEnabled = value;
                    });
                  },
                  activeColor: Colors.purple,
                ),
              ],
            ),
            Text(
              'BIO',
              style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Put a little something about yourself',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              maxLines: null,
              onChanged: (value) {
                setState(() {
                  _bio = value;
                });
              },
            ),

            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'AGE',
                  style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      '$_age',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: Icon(Icons.edit,color: Colors.purple[600],),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              height: 20,
              thickness: 1,
              indent: 5,
              endIndent: 5,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ADDRESS',
                  style: TextStyle(fontSize: 18,color: Colors.black54, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.purple[600]),
                    SizedBox(width: 8),
                    Text(
                      _location,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.edit, color: Colors.purple[600]),
                  onPressed: () {},
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              height: 20,
              thickness: 1,
              indent: 5,
              endIndent: 5,
            ),
            SizedBox(height: 16),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('GENDER',
                  style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 16), // add some horizontal spacing between text and dropdown
                DropdownButton(
                  value: _selectedGender,
                  items: _genderOptions.map((String gender) {
                    return DropdownMenuItem<String>(
                      value: gender,
                      child: Text(gender, ),
                    );
                  }).toList(),
                  onChanged: (String value) {
                    setState(() {
                      _selectedGender = value;
                    });
                  },
                ),
              ],
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
                      'SAVE',
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
