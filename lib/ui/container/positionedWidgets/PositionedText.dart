


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitledtest/ui/container/positionedWidgets/PositionedFactoryWidget.dart';

class PositionedText implements PositionedFactoryWidget {

  PositionedText() {

  }

  @override
  Positioned createPositioned() {
      return Positioned(
        top: 250,
        child: Container(
          width: 250,
          height: 180,
          decoration: new BoxDecoration(
            color: Colors.pinkAccent,
            border: Border.all(
                color: Colors.pinkAccent,
                width: 3.0
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(10.0)
            ),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hocine BEGOUG",
                style: TextStyle(color: Colors.white),
              ),
              Text("gm_begoug@esi.dz", style: TextStyle(color: Colors.white)),
              Row(
                children: [
                  Icon(
                    Icons.account_circle_outlined,
                    color: Colors.white,
                  ),
                  Text("twitter: AhmedMahi@46", style: TextStyle(color: Colors.white))
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              )
            ],
          ),
        ),
      );
  }
}