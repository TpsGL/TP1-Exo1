


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitledtest/ui/container/positionedWidgets/PositionedFactoryWidget.dart';
import 'package:untitledtest/ui/container/positionedWidgets/PositionedImage.dart';
import 'package:untitledtest/ui/container/positionedWidgets/PositionedText.dart';

class StackComponent {

  List<PositionedFactoryWidget> positionedWidgets = [
    new PositionedText(),
    new PositionedImage(),

  ];


  StackWidget() { }

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

