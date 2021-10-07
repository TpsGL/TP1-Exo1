


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitledtest/data/models/Profile.dart';
import 'package:untitledtest/ui/container/positionedWidgets/PositionedFactoryWidget.dart';
import 'package:untitledtest/ui/container/positionedWidgets/PositionedImage.dart';
import 'package:untitledtest/ui/container/positionedWidgets/PositionedText.dart';

class StackComponent {

  late List<PositionedFactoryWidget> positionedWidgets;

  StackComponent(Profile profile) {
    positionedWidgets = [
      new PositionedText(profile),
      new PositionedImage(profile),
    ];
  }


  /**
   *
   */
  List<Widget> getPositionedWidgets() {
      List<Widget> widgets = [];
      for ( var positioned in positionedWidgets ) {
            widgets.add(positioned.createPositioned());
      }
      return widgets;
  }

  /**
   *
   */
  Stack createMyStackWidget() {
      return Stack(
        alignment: Alignment.center,
        children: getPositionedWidgets()
      );
    }


}

