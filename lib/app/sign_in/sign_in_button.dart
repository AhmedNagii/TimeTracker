import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_course/app/sign_in/widgets/cutome_elevatedButton.dart';

class SignInButton extends CustomElevatedButton {
  SignInButton({
    @required String text,
    MaterialStateProperty color,
    Color textColor,
    VoidCallback onPressed,
  })  : assert(text != null),
        super(
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 15),
          ),
          color: color,
          onPressed: onPressed,
        );
}
