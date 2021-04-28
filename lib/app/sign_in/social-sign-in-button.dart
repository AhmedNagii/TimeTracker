import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/cutome_elevatedButton.dart';

class SocialSignInButton extends CustomElevatedButton {
  SocialSignInButton({
    @required String assetName,
    @required String text,
    MaterialStateProperty color,
    Color textColor,
    VoidCallback onPressed,
  })  : assert(text != null),
        assert(assetName != null),
        super(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(assetName),
                Text(text, style: TextStyle(color: textColor, fontSize: 15)),
                Opacity(
                  opacity: 0,
                  child: Image.asset(assetName),
                ),
              ],
            ),
            color: color,
            onPressed: onPressed);
}
