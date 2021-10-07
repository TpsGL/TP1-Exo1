



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitledtest/data/models/Profile.dart';
import 'package:untitledtest/ui/container/positionedWidgets/PositionedFactoryWidget.dart';

class PositionedImage implements PositionedFactoryWidget {

  late String imgSrc ;

  PositionedImage(Profile profile) {
      imgSrc = profile.getImgSrc();
  }

  @override
  Positioned createPositioned()  {

    return Positioned(
      top: 150,
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(this.imgSrc)
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