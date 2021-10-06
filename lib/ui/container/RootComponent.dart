




import 'package:flutter/cupertino.dart';

import 'StackComponent.dart';

class RootComponent {

    StackComponent stackComponent = new StackComponent();

    RootComponent() {

    }

    Container createContainer() {
       return Container(
           alignment: Alignment.center,
           child: stackComponent.createMyStackWidget()
       );
    }


}