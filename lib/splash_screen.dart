import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'landing_screen.dart';
import 'package:approcks_task/localization/localization_constants.dart';

class SplashhScreen extends StatefulWidget {
  @override
  _SplashhScreen createState() => new _SplashhScreen();
}

class _SplashhScreen extends State<SplashhScreen> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new LandingWizardScreen(),
      image: Image.asset(
        'project_images/shafi_splash.png',
      ),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 200.0,
    );
  }
}
