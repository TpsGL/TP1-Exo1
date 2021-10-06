//import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:untitledtest/ui/UiClassifier.dart';
import 'package:untitledtest/ui/bar/MyAppBar.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CardFragment()
  ));
}






class CardFragment extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: UiClassifier.instance.callAppBar(),
        ),
      body: UiClassifier.instance.createContainer()
     );
  }
  
}


