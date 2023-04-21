import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tinder_clone/main.dart';
import 'package:tinder_clone/pages/welcome_to_tinder.dart';


class LogIn extends StatefulWidget {
  const LogIn({Key key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[600],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                height: 100,
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: SvgPicture.asset(
                    "assets/images/gachagamerlogo.svg",

                  ),
                ),
              ),

              Text(
                'GOTCHA',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 60,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 100),
              // log in first
              Padding(
                padding: EdgeInsets.only(left: 35.0, right: 25.0),
                child: Text(
                  'By clicking Log in, you agree with our Terms. Learn how we process your data in our Privacy Policy and Cookies Policy',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              //username or email textfield

              SizedBox(height: 10),
              // password textField
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 25),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => pageA()));
                  },
                  child: Container(
                    padding:  EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Row(
                        children:  [
                          Container(
                            height: 50,
                            width: 50,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: SvgPicture.asset(
                                "assets/images/google.svg",

                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25),
                            child: Text(
                              'LOG IN WITH GOOGLE',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 25),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => pageA()));
                  },
                  child: Container(
                    padding:  EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Row(
                        children:  [
                          Container(
                            height: 50,
                            width: 50,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: SvgPicture.asset(
                                "assets/images/facebook.svg",

                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'LOG IN WITH FACEBOOK',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // sign in button
              SizedBox(height: 10),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 25),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => pageA()));
                  },
                  child: Container(
                    padding:  EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Row(
                        children:  [
                          Icon(
                            Icons.phone,
                            size: 40,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(

                            'LOG IN WITH PHONE NUMBER',
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              // register now
              Text(
                'Trouble logging in?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
