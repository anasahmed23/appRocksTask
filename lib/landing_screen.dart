import 'package:approcks_task/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'login_screen.dart';
import 'package:approcks_task/localization/localization_constants.dart';

class LandingWizardScreen extends StatefulWidget {
  @override
  _LandingWizardScreenState createState() => _LandingWizardScreenState();
}

class _LandingWizardScreenState extends State<LandingWizardScreen> {
  void toLoginScreen(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: IntroductionScreen(
            done: Text(
              getTranslated(context, '9_string'),
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            next: Text(
              getTranslated(context, '7_string'),
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            showNextButton: true,
            showSkipButton: true,
            skip: Text(
              getTranslated(context, '8_string'),
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            pages: [
              PageViewModel(
                image: Image.asset('project_images/intro_image1.jpg'),
                title: getTranslated(context, '1_string'),
                body: getTranslated(context, '2_string'),
              ),
              PageViewModel(
                image: Image.asset('project_images/intro_image2.jpg'),
                title: getTranslated(context, '3_string'),
                body: getTranslated(context, '4_string'),
              ),
              PageViewModel(
                image: Image.asset('project_images/intro_image3.jpg'),
                title: getTranslated(context, '5_string'),
                body: getTranslated(context, '6_string'),
              ),
            ],
            globalBackgroundColor: Colors.white,
            onDone: () => toLoginScreen(context),
            onSkip: () => toLoginScreen(context),
          ),
        ),
      ),
    );
  }
}
