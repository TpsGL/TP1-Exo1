



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitledtest/ui/container/positionedWidgets/PositionedFactoryWidget.dart';

class PositionedImage implements PositionedFactoryWidget {

  PositionedImage() {

  }

  @override
  Positioned createPositioned()  {

    return Positioned(
      top: 190,
      child: Container(
        width: 100,
        height: 100,
        decoration: new BoxDecoration(
            image: const DecorationImage(
                image: NetworkImage('https://d1fmx1rbmqrxrr.cloudfront.net/zdnet/optim/i/edit/ne/2019/Pierre%20temp/Richard%20Stallman%20A__w630.jpg')
            ),
            border: Border.all(
                color: Colors.pinkAccent,
                width: 2
            ),
            shape: BoxShape.circle
        ),
      ),
    );
  }


}