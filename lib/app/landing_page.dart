import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../app/home_page.dart';
import './sign_in/sign_in_page.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  User _user;

  void _updateUser(User user) {
    print("id: ${user.uid}");
    setState(() {
      _user = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      return SignInPage(onSignIn: _updateUser);
    }
    return HomePage(
      onSignOut: () => _updateUser(null),
    );
  }
}
