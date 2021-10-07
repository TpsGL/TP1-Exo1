import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitledtest/data/models/Profile.dart';
import 'package:untitledtest/ui/UiClassifier.dart';
import 'package:hexcolor/hexcolor.dart';

void main()  {

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    //DeviceOrientation.portraitDown,
  ]);

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CardFragment()
  ));
}






class CardFragment extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    Profile myProfile = new Profile(
        fullName: "Mahi BEGOUG",
        imgSrc: 'https://edu-html.ac-versailles.fr/lyc-rabelais-meudon/KenzaMarjoriePersonnages/EdsgerD.jpg',
        email: "gm_begoug@esi.dz", twitterAccount: 'AhmedMahi@46');
    return Scaffold(
        backgroundColor: HexColor("#8EBFE7"),
        appBar: AppBar(
          title: UiClassifier.instance.callAppBar(),
        ),
      body: UiClassifier.instance.createContainer(myProfile)
     );
  }
  
}
