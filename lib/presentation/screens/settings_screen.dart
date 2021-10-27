


import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget{
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Center(
          child: Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                print(isSwitched);
              });
            },
            activeTrackColor: Colors.lightGreenAccent,
            activeColor: Colors.green,
          ),
        )
    );

  }


}