import 'package:flutter/material.dart';
import 'register_screen.dart';
import 'main_screen.dart';
import 'package:approcks_task/localization/localization_constants.dart';

class LoginScreen extends StatefulWidget {
  //LOGIN SCREEN

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void toCreatNewAccount(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => RegisterScreen()),
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
                  getTranslated(context, '10_string'),
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
                        EdgeInsets.only(left: 50.0, right: 50.0, top: 80.0),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.tablet_android),
                            hintText: getTranslated(context, '11_string'),
                          ),
                        ),
                        TextField(
                          obscureText: true,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: getTranslated(context, '12_string'),
                            prefixIcon: Icon(Icons.lock),
                          ),
                        ),
                        SizedBox(
                          height: 35.0,
                        ),
                        FlatButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          onPressed: () {},
                          child: Text(
                            getTranslated(context, '13_string'),
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                          child: Divider(
                            color: Colors.black,
                            indent: 30.0,
                            endIndent: 30.0,
                          ),
                        ),
                        FlatButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            );
                          },
                          child: Text(
                            getTranslated(context, '14_string'),
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        FlatButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            );
                          },
                          child: Text(
                            getTranslated(context, '15_string'),
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 100.0),
                          child: Row(
                            children: [
                              InkWell(
                                child: Text(
                                  getTranslated(context, '24_string'),
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                                onTap: () => toCreatNewAccount(context),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                getTranslated(context, '16_string'),
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
