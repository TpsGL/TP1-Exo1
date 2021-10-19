import 'package:exo2/configs/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {


  final String buttonLabel;

  final Function() onPressed;

  Button({required this.buttonLabel, required this.onPressed});

  @override
  Widget build(BuildContext context) {

    return ButtonTheme(
        minWidth: 150,
        height: 60,
        child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            color: Theme.of(context).accentColor,
            disabledColor: AppColors.darkSlateBlue,
            child: Text(
              buttonLabel,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
            onPressed: onPressed
        )
    );
  }
}