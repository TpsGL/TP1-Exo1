

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitledtest/data/models/Profile.dart';
import 'package:untitledtest/ui/bar/MyAppBar.dart';
import 'package:untitledtest/ui/container/RootComponent.dart';

class UiClassifier {

  static UiClassifier? _instance;

  // Implementation of Singleton Pattern with Lazy Loading
  UiClassifier._();

  static UiClassifier get instance => _instance ??= UiClassifier._();

  AppBar callAppBar() {
    MyAppBar appBar = new MyAppBar();
    return appBar.createAppBar();
  }

  Container createContainer(Profile profile) {
    RootComponent rootComponent = new RootComponent(profile);
    return rootComponent.createContainer();
  }
}
