import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'verification_screen.dart';
import 'package:approcks_task/localization/localization_constants.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  void toLoginScreen(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            children: [
              Center(
                child: Text(
                  getTranslated(context, '17_string'),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Container(
                    padding:
                        EdgeInsets.only(left: 50.0, right: 50.0, top: 10.0),
                    color: Colors.white,
                    child: Column(
                      children: [
                        FlatButton(
                          color: Colors.blue,
                          onPressed: () {},
                          child: Text(
                            getTranslated(context, '18_string'),
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          // padding: EdgeInsets.only(
                          //     left: 50.0, right: 50.0, top: 80.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(),
                                  child: TextField(
                                    textAlign: TextAlign.right,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.person),
                                      hintText:
                                          getTranslated(context, '20_string'),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: TextField(
                                    textAlign: TextAlign.right,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.person),
                                      hintText:
                                          getTranslated(context, '19_string'),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: getTranslated(context, '21_string'),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.tablet_android),
                            hintText: getTranslated(context, '11_string'),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          obscureText: true,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: getTranslated(context, '23_string'),
                            prefixIcon: Icon(Icons.lock),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: FlatButton(
                            color: Colors.blue,
                            textColor: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VerScreen()),
                              );
                            },
                            child: Text(
                              getTranslated(context, '17_string'),
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 120.0),
                          child: Row(
                            children: [
                              InkWell(
                                child: Text(
                                  getTranslated(context, '13_string'),
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                                onTap: () => toLoginScreen(context),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                getTranslated(context, '25_string'),
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
