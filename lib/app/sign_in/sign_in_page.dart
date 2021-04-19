import 'package:flutter/material.dart';
import 'package:time_tracker_course/app/sign_in/sign_in_button.dart';
import 'package:time_tracker_course/app/sign_in/social-sign-in-button.dart';

class SigInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        elevation: 7,
      ),
      body: _buildContainer(),
      backgroundColor: Colors.grey[100],
    );
  }

  Widget _buildContainer() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Sign in',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 48),
          SocialSignInButton(
            text: 'Sign in with Google',
            assetName: 'images/google-logo.png',
            textColor: Colors.black87,
            color: MaterialStateProperty.all<Color>(Colors.white),
            onPressed: () {},
          ),
          SizedBox(height: 8),
          SocialSignInButton(
            text: 'Sign in with Facebook',
            assetName: 'images/facebook-logo.png',
            textColor: Colors.white,
            color: MaterialStateProperty.all<Color>(Color(0xFF334D92)),
            onPressed: () {},
          ),
          SizedBox(height: 8),
          SignInButton(
            text: 'Sign in with Email',
            textColor: Colors.white,
            color: MaterialStateProperty.all<Color>(
              Colors.teal[700],
            ),
            onPressed: () {},
          ),
          SizedBox(height: 10),
          Text(
            "OR",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          SignInButton(
            text: 'Go anonymous',
            textColor: Colors.black,
            color: MaterialStateProperty.all<Color>(
              Colors.lime,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
