


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitledtest/data/models/Profile.dart';
import 'package:untitledtest/ui/container/positionedWidgets/PositionedFactoryWidget.dart';

class PositionedText implements PositionedFactoryWidget {

  late String fullText;

  late String email;

  late String socialAccount;

  PositionedText(Profile profile) {
      fullText = profile.getFullName();
      email = profile.email;
      socialAccount = profile.getTwitterAccount();
  }

  @override
  Positioned createPositioned() {
      return Positioned(
        top: 250,
        child: Container(
          width: 290,
          height: 300,
          decoration: new BoxDecoration(
            color: Colors.pinkAccent,
            border: Border.all(
                color: Colors.pinkAccent,
                width: 4.0
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(12.0)
            ),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                fullText,
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              Text(email, style: TextStyle(color: Colors.white, fontSize: 18.0)),
              Row(
                children: [
                  Icon(
                    Icons.account_circle_outlined,
                    color: Colors.white,
                  ),
                  Text("twitter: " + socialAccount, style: TextStyle(color: Colors.white, fontSize: 18.0))
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              )
            ],
          ),
        ),
      );
  }
}