import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/account_page.dart';
import 'package:tinder_clone/pages/birthday.dart';
import 'package:tinder_clone/pages/edit_profile_page.dart';
import 'package:tinder_clone/pages/game_preferences.dart';
import 'package:tinder_clone/pages/log_in.dart';
import 'package:tinder_clone/pages/match.dart';
import 'package:tinder_clone/pages/profile_page.dart';
import 'package:tinder_clone/pages/root_app.dart';
import 'package:tinder_clone/pages/welcome_to_tinder.dart';
import 'package:tinder_clone/data/explore_json.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
   home: LogIn(),
    //home: GamePreferences(),
    //home: ProfilePage(),
    //home: DatingProfilePage(),
  ));
}

