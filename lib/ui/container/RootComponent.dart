




import 'package:flutter/cupertino.dart';
import 'package:untitledtest/data/models/Profile.dart';

import 'StackComponent.dart';

class RootComponent {

    late StackComponent stackComponent ;//= new StackComponent();

    RootComponent(Profile profile) {
        stackComponent = new StackComponent(profile);
    }

    Container createContainer() {
       return Container(
           alignment: Alignment.center,
           child: stackComponent.createMyStackWidget()
       );
    }


}